import { LightningElement, api } from 'lwc';
import { OmniscriptBaseMixin } from 'omnistudio/omniscriptBaseMixin';
export default class CncDynamicTableSections extends OmniscriptBaseMixin(LightningElement) {
    @api keyField = 'Id';
    @api isomniscript;
    @api omniscriptname;
    @api omniscriptstepname;
    @api tableHeight = 524;
    _data = {};
    columns = [];
    rows = [];
    selectedKeys = [];
    selectedRecords = [];
    search = '';
    pageNumber = 1;
    sortedBy;
    sortDirection = 'asc';
    @api get recorddata() { return this._data; }
    set recorddata(value) {
        const data = typeof value === 'string' ? JSON.parse(value) : value;
        this._data = data || {};
        this.columns = Array.isArray(this._data.Columns) ? JSON.parse(JSON.stringify(this._data.Columns)) : [];
        this.rows = Array.isArray(this._data.responsedata) ? JSON.parse(JSON.stringify(this._data.responsedata)) : [];
        this.pageNumber = 1;
    }
    @api get preselecteddata() { return this.selectedRecords; }
    set preselecteddata(value) {
        this.selectedRecords = Array.isArray(value) ? JSON.parse(JSON.stringify(value)) : [];
        this.selectedKeys = this.selectedRecords.map(row => row[this.keyField]);
    }
    get tableStyle() { return `max-height:${Number(this.tableHeight) || 524}px;overflow:auto;`; }
    get filteredRows() {
        return this.rows.filter(row => !this.search || Object.values(row).some(value => String(value ?? '').toLowerCase().includes(this.search)));
    }
    get pageSize() { return Math.max(1, Number(this._data.recordLimitPerPage) || 10); }
    get totalPages() { return Math.max(1, Math.ceil(this.filteredRows.length / this.pageSize)); }
    get visibleRows() { return this._data.showPagination ? this.filteredRows.slice((this.pageNumber - 1) * this.pageSize, this.pageNumber * this.pageSize) : this.filteredRows; }
    get showPagination() { return this._data.showPagination === true; }
    get showFilterBy() { return this._data.showFilterBy === true; }
    get showRowNumber() { return this._data.showRowNumber === true; }
    get noRows() { return this.rows.length === 0; }
    get hideCheckbox() { return this._data.isSelectable === false; }
    get previousDisabled() { return this.pageNumber <= 1; }
    get nextDisabled() { return this.pageNumber >= this.totalPages; }
    handleSearch(event) { this.search = event.target.value.toLowerCase(); this.pageNumber = 1; }
    previousPage() { this.pageNumber = Math.max(1, this.pageNumber - 1); }
    nextPage() { this.pageNumber = Math.min(this.totalPages, this.pageNumber + 1); }
    handleSort(event) {
        const { fieldName, sortDirection } = event.detail;
        this.sortedBy = fieldName; this.sortDirection = sortDirection;
        const direction = sortDirection === 'asc' ? 1 : -1;
        this.rows = [...this.rows].sort((a,b) => direction * String(a[fieldName] ?? '').localeCompare(String(b[fieldName] ?? ''), undefined, {numeric:true}));
    }
    getSelectedRows(event) {
        const visible = new Set(this.visibleRows.map(row => row[this.keyField]));
        this.selectedRecords = [...this.selectedRecords.filter(row => !visible.has(row[this.keyField])), ...event.detail.selectedRows];
        this.selectedKeys = this.selectedRecords.map(row => row[this.keyField]);
        if (this.omniscriptname === 'SendCommunication' && this.omniscriptstepname === 'SelectForms') {
            const selected = this.selectedRecords;
            const response = { selectedForms: selected, isFormSelected: selected.length > 0, preSelectedForms: selected };
            if (selected.length > 0) response.isFormshasAttachments = true;
            this.omniApplyCallResp(response);
        }
    }
}
