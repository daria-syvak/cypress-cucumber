class LeadSubmissionPage {
  elements = {
    zipcode: () => cy.get("#zip-code"),
    streetAddress: () => cy.get("#street-address"),
    city: () => cy.get("#city"),
    state: () => cy.get('#state'),
    firstName: () => cy.get('#first-name'),
    lastName: () => cy.get('#last-name'),
    dob: () => cy.get('#dob'),
    incomeAmmount: () => cy.get('#income-amount'),
    phoneNumber: () => cy.get('#phone-number'),
    email: () => cy.get('#email'),
    ssn: () => cy.get('#ssn'),
    loanamount: () => cy.get('#loan-amount'),
    continueBtn: () => cy.get('button[type=submit]'),
    education: ()=>cy.get('#education-level')

  };

  leadSubmission(data) {
    // Log the data to ensure it is defined
    console.log('Data:', data);

    // Ensure data fields are defined before using them
    if (data.zipcode) {
      this.elements.zipcode().should('be.visible').type(data.zipcode);
      this.elements.continueBtn().click();
    }

    if (data.streetAddress) {
      this.elements.streetAddress().should('be.visible').type(data.streetAddress);
      this.elements.continueBtn().click();
    }

    if (data.city) {
      this.elements.city().should('be.visible').type(data.city);
      this.elements.continueBtn().click();
    }

    if (data.state) {
      this.elements.state().should('be.visible').select(data.state);
      this.elements.continueBtn().click();
    }

    if (data.firstName) {
      this.elements.firstName().should('be.visible').type(data.firstName);
    }

    if (data.lastName) {
      this.elements.lastName().should('be.visible').type(data.lastName);
      this.elements.continueBtn().click();
    }

    if (data.dob) {
      this.elements.dob().should('be.visible').type(data.dob);
      this.elements.continueBtn().click();
    }

    if (data.income) {
      this.elements.incomeAmmount().should('be.visible').type(data.income);
      this.elements.continueBtn().click();
    }

    if (data.phone) {
      this.elements.phoneNumber().should('be.visible').type(data.phone);
      this.elements.continueBtn().click();
    }

    if (data.email) {
      this.elements.email().should('be.visible').type(data.email);
      this.elements.continueBtn().click();
    }

  }

  leadSubmissionWithOptionalField(data) {
    // Log the data to ensure it is defined
    console.log('Data:', data);

    if (data.education) {
      this.elements.education().should('be.visible').select(data.education);
      this.elements.continueBtn().click();
    }

    // Handle optional fields
    if (data.loanamount) {
      this.elements.loanamount().should('be.visible').type(data.loanamount);
      this.elements.continueBtn().click();
    }   

    if (data.ssn) {
      this.elements.ssn().should('be.visible').type(data.ssn);
      this.elements.continueBtn().click();
    }

    if (!data) {
      Cypress.log({ message: 'Data object not provided or undefined' });
      return; // Optionally break out of function if data is not defined
    }

  }


  leadSubmissionALA(data) {
    console.log('Data:', data);

    if (data.income) {
      this.elements.incomeAmmount().should('be.visible').type(data.income);
      this.elements.continueBtn().click();
    }
    if (data.firstName) {
      this.elements.firstName().should('be.visible').type(data.firstName);
    }
    if (data.lastName) {
      this.elements.lastName().should('be.visible').type(data.lastName);
      this.elements.continueBtn().click();
    }
    if (data.dob) {
      this.elements.dob().should('be.visible').type(data.dob);
      this.elements.continueBtn().click();
    }
    if (data.zipcode) {
      this.elements.zipcode().should('be.visible').type(data.zipcode);
      this.elements.continueBtn().click();
    }
    if (data.streetAddress) {
      this.elements.streetAddress().should('be.visible').type(data.streetAddress);
      this.elements.continueBtn().click();
    }
    if (data.city) {
      this.elements.city().should('be.visible').type(data.city);
      this.elements.continueBtn().click();
    }
    if (data.state) {
      this.elements.state().should('be.visible').select(data.state);
      this.elements.continueBtn().click();
    }
    if (data.phone) {
      this.elements.phoneNumber().should('be.visible').type(data.phone);
      this.elements.continueBtn().click();
    }
    if (data.email) {
      this.elements.email().should('be.visible').type(data.email);
      this.elements.continueBtn().click();
    }
    if (!data) {
      Cypress.log({ message: 'Data object not provided or undefined' });
      return; // Optionally break out of function if data is not defined
    }

  }


}

export const leadSubmissionPage = new LeadSubmissionPage();