Cypress.Commands.add('visitMobile', () => {
    cy.viewport('iphone-6');
  });
  
  Cypress.Commands.add('clickIfExists', (selector, maxRetries = 10, interval = 500) => {
    let retries = 0;
  
    function checkAndClick() {
        cy.get('body').then(($body) => {
            if ($body.find(selector).length > 0) {
                cy.get(selector).click();
            } else if (retries < maxRetries) {
                retries++;
                cy.wait(interval).then(checkAndClick);
            } else {
                cy.log(`Element with selector '${selector}' does not exist after ${maxRetries} retries.`);
            }
        });
    }
  
    checkAndClick();
  });
  