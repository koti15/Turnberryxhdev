import { LightningElement, api, wire } from 'lwc';
import { OmniscriptBaseMixin } from 'omnistudio/omniscriptBaseMixin';
import { getRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
const FIELDS = ['ContentDocument.ContentSize'];
export default class CncAttachmentsUploadSection extends OmniscriptBaseMixin(LightningElement) {
    @api currentrecordid;
    @api uploadforms;
    documentId;
    documents = [];
    checking = false;
    errorMessage;
    get acceptedFormats() { return ['.pdf']; }
    get disabled() { return !this.currentrecordid || this.checking || ![true, 'true'].includes(this.uploadforms); }
    get docCount() { return this.documents.length; }
    @wire(getRecord, { recordId: '$documentId', fields: FIELDS })
    checkDocument({ data, error }) {
        if (data) {
            this.checking = false;
            const size = data.fields.ContentSize.value;
            if (size > 4194304) {
                this.errorMessage = 'Your attached file exceeds 4MB. Attach another file or send it using email';
                this.dispatchEvent(new ShowToastEvent({title:'ERROR',message:this.errorMessage,variant:'error',mode:'sticky'}));
                return;
            }
            if (!this.documents.some(doc => doc.contentDocumentId === this.documentId)) this.documents = [...this.documents, {contentDocumentId:this.documentId}];
            this.errorMessage = undefined;
            this.omniApplyCallResp({isDocumentUploaded:true,uploadedDocumentIds:this.documents});
        } else if (error) {
            this.checking = false;
            this.errorMessage = 'Unable to validate the uploaded file size. The file has not been added to the communication.';
        }
    }
    handleUploadFinish(event) {
        const document = event.detail.files[0];
        if (document?.documentId) { this.checking = true; this.documentId = document.documentId; }
    }
}
