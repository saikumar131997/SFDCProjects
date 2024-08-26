import { LightningElement, api } from 'lwc';
import { loadStyle } from 'lightning/platformResourceLoader';
import customStyles from '@salesforce/resourceUrl/customStyles';
export default class PortfolioUserDetailsAndStatsWrapper extends LightningElement {
    @api recordId='0015g00001T63PsAAJ';
    @api objectApiName='Account';
    @api rank='Ranger'
    @api resumeUrl ='https://github.com/karkranikhil/nikhil-resume/raw/main/SFdummyResume%20(1).pdf';
    @api badges='208'; 
    @api points='1,30,000';
    @api trails='17+';
    
    renderedCallback(){
        loadStyle(this, customStyles + '/customNewStyles/newStyles.css').then(() => {});
    }
}