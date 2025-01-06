
const data = require ('../fixtures/ccpa_data.json');

class CCPAPage {
    elements = {
        ccpaRequestorType: () => cy.get("#ccpa-requestor-type"),
        ccpaRequestorTypeId: () => cy.get("#ccpa-request-type-ids-1"),
        zipcode: () => cy.get("#zip-code"),
        streetAddress: () => cy.get("#street-address"),
        city: () => cy.get("#city"),
        state: () => cy.get("#state"),
        firstName: () => cy.get("#first-name"),
        lastName: () => cy.get("#last-name"),
        dob: () => cy.get("#dob"),
        incomeAmmount: () => cy.get("#income-amount"),
        phoneNumber: () => cy.get("#phone-number"),
        email: () => cy.get("#email"),
        submitBtn: () => cy.get('button[type=submit]'),
    };

  ccpaSubmit(){
    this.elements.ccpaRequestorType().select(data.ccpaRequestorType);
    this.elements.ccpaRequestorTypeId().click({ force: true });
    this.elements.firstName().type(data.firstName);
    this.elements.lastName().type(data.lastName);
    this.elements.streetAddress().type(data.streetAddress);
    this.elements.city().type(data.city);
    this.elements.state().select(data.state);
    this.elements.zipcode().type(data.zipcode);
  
    this.elements.email().type(data.email);
    this.elements.phoneNumber().type(data.phone);
    this.elements.submitBtn().click();
  }
}

export const ccpaPage = new CCPAPage();
