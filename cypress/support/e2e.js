require('cypress-xpath');
import './commands'
Cypress.on("uncaught:exception", (err, runnable) => {
});