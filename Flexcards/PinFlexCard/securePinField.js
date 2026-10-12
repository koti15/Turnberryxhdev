import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class SecurePinField extends LightningElement {
  @api recordId;
  pin = '';
  confirmation = '';
  onPin(event) { this.pin = event.target.value; }
  onConfirmation(event) { this.confirmation = event.target.value; }
  validate() {
    const valid = /^[0-9]{4,6}$/.test(this.pin) && this.pin === this.confirmation;
    this.dispatchEvent(new ShowToastEvent({
      title: valid ? 'Validated' : 'Invalid PIN',
      message: valid ? 'PIN format is valid. Secure backend persistence is not configured.' : 'Enter matching 4 to 6 digit PINs.',
      variant: valid ? 'warning' : 'error'
    }));
    this.pin = '';
    this.confirmation = '';
  }
}