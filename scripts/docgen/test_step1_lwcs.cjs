// Tests executable component logic; does not replace Salesforce compiler or browser tests.
const fs = require('node:fs');
const path = require('node:path');
const assert = require('node:assert/strict');
class LightningElement { dispatchEvent() {} }
const OmniscriptBaseMixin = Base => class extends Base { omniApplyCallResp(value) { this.response = value; } };
class ShowToastEvent { constructor(value) { this.value = value; } }
function load(name, className) {
    const file = path.resolve(__dirname, '../../force-app/main/default/lwc', name, `${name}.js`);
    const source = fs.readFileSync(file, 'utf8').replace(/^import .*\n/gm, '').replace('export default class', 'class').replace(/@api /g, '').replace(/^\s*@wire\([^\n]+\)\n/gm, '\n');
    return new Function('LightningElement', 'OmniscriptBaseMixin', 'ShowToastEvent', source + `;return ${className};`)(LightningElement, OmniscriptBaseMixin, ShowToastEvent);
}
const CncDynamicTableSections = load('cncDynamicTableSections', 'CncDynamicTableSections');
const CncAttachmentsUploadSection = load('cncAttachmentsUploadSection', 'CncAttachmentsUploadSection');
const table = new CncDynamicTableSections();
table.omniscriptname='SendCommunication';table.omniscriptstepname='SelectForms';
table.recorddata={Columns:[{fieldName:'name'}],responsedata:[{Id:'1',name:'A'},{Id:'2',name:'B'}],showPagination:true,recordLimitPerPage:1};
table.getSelectedRows({detail:{selectedRows:[table.visibleRows[0]]}});table.nextPage();
table.getSelectedRows({detail:{selectedRows:[table.visibleRows[0]]}});
assert.equal(table.response.selectedForms.length,2);assert.equal(table.response.isFormshasAttachments,true);
table.getSelectedRows({detail:{selectedRows:[]}});assert.equal(table.response.selectedForms.length,1);
table.previousPage();table.getSelectedRows({detail:{selectedRows:[]}});assert.equal(table.response.isFormSelected,false);
table.handleSearch({target:{value:'B'}});assert.equal(table.visibleRows.length,1);assert.equal(table.visibleRows[0].Id,'2');
const upload = new CncAttachmentsUploadSection();upload.currentrecordid='500example';upload.uploadforms='true';
assert.equal(upload.disabled,false);upload.documentId='069big';
upload.checkDocument({data:{fields:{ContentSize:{value:4194305}}}});assert.equal(upload.response,undefined);assert.equal(upload.documents.length,0);
upload.documentId='069small';upload.checkDocument({data:{fields:{ContentSize:{value:4194304}}}});
assert.equal(upload.response.isDocumentUploaded,true);assert.equal(upload.response.uploadedDocumentIds[0].contentDocumentId,'069small');
console.log('PASS: selection across pages, deselection, filtering, upload size boundary and output contracts.');
