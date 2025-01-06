export const clickByText = (text) => {
  cy.wait(100);
  
  // Try to find the element using CSS selector
  cy.get('button, input[type="button"], a, span[class]')
    .contains(text)
    .should('be.visible') // Ensure the element is visible
    .click() // Attempt click
    .then(null, () => {
      // If CSS selector fails, fallback to XPath
      cy.xpath(`//*[text()="${text}"]`)
        .should('be.visible') // Ensure the element is visible
        .click({ force: true }); // Attempt click with force
    });
};
