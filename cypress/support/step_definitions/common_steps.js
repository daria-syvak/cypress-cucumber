import {Given, When, Then, Before} from "@badeball/cypress-cucumber-preprocessor";

import { clickByText } from "../../e2e/features/utils/elementActions";

When("User click on {string}", (text) => {
  clickByText(text);
});



When("debug", () => {
  cy.debug();
});

When("pause", () => {
  cy.pause();
});

const my_robust_click = (text, type = '*') => {
  cy.xpath(`//${type}[contains(text(),"${text}")]`).first().as('my_first_custom_id');
  cy.get('@my_first_custom_id').then(($element) => {
    if ($element.length > 0) {
      cy.wrap($element).click({ force: true });
      cy.wait(786);
      cy.xpath(`//${type}[contains(text(),"${text}")]`).then(($element) => {
        if ($element.length > 0) {
          cy.wrap($element).click({ multiple: true, force: true });
        }
      });
    } else {
      cy.log('Element not found');
    }
  });
};

Given('User is in {string} landing page in {string} view', (webpage, view) => {
  switch (view) {
    case "mobile":
      cy.visitMobile()
      break;
    case "desktop":
      cy.viewport(window.screen.width, window.screen.height);
      break;
  }
  switch (webpage) {
    case "financially free nurse":
      cy.visit("https://staging.financiallyfreenurse.com/social");
      break;
    case "the debt free teacher":
      cy.visit("https://staging.thedebtfreeteacher.org/social");
      break;
    case "bill doctor":
      cy.visit("https://staging.billdoctor.org/social");
      break;
    case "american loan assistance":
      cy.visit("https://staging.americanloanassistance.org/social");
      break;
    case "american debt assistance":
      cy.visit("https://staging.americandebtassistance.org/social");
      break;
    case "veteran debt assistance":
      cy.visit("https://staging.veterandebtassistance.org/social");
      break;
    case "the debt free veteran":
      cy.visit("https://staging.thedebtfreeveteran.org/social");
      break;

  }
})

Given('User is in {string} home page in {string} view', (webpage, view) => {
  switch (view) {
    case "mobile":
      cy.visitMobile()
      break;
    case "desktop":
      cy.viewport(window.screen.width, window.screen.height);
      break;
  }
  switch (webpage) {
    case "financially free nurse":
      cy.visit("https://staging.financiallyfreenurse.com");
      break;
    case "the debt free teacher":
      cy.visit("https://staging.thedebtfreeteacher.org");
      break;
    case "bill doctor":
      cy.visit("https://staging.billdoctor.org");
      break;
    case "american loan assistance":
      cy.visit("https://staging.americanloanassistance.org");
      break;
    case "american debt assistance":
      cy.visit("https://staging.americandebtassistance.org");
      break;
    case "veteran debt assistance":
      cy.visit("https://staging.veterandebtassistance.org");
      break;
    case "the debt free veteran":
      cy.visit("https://staging.thedebtfreeveteran.org");
      break;

  }
})

When("User clicks on {string}", (text) => {
  my_robust_click(text);
});

When("User clicks on {string} link", (text) => {
  my_robust_click(text, 'a');
});

When("User clicks on {string} button", (text) => {
  my_robust_click(text, 'button');
});

When("User selects debt amount", (text) => {
  cy.clickIfExists("#site-main > section.info-section.info-section_name_step-hero > div > div > div > div > form > fieldset > div.form__fieldset__body > button:nth-child(2) > span.form__button__label")
  cy.clickIfExists("#site-main > section.info-section.info-section_name_step-hero > div > div > div > div > form > fieldset > div.form__fieldset__body > button:nth-child(2) > span.form__button__label")
  cy.wait(2000)
});

When(/^User clicks on\s?(button|link|\s*)\s?['"](.+?)['"] in ['"](.+?)['"] view$/, (button_link_other, text, view) => {
  if (view === 'mobile') {
    // Check if the footer navigation is present and scroll to it if necessary
    cy.get("body").then(($body) => {
      if ($body.find(".site-footer__nav__menu").length > 0) {
        // Scroll into view and ensure visibility of footer
        cy.get(".site-footer__nav__menu").scrollIntoView().should('be.visible');
      }
    });

    // Perform the click on the button/link in mobile view
    if (button_link_other === "button") {
      my_robust_click(text, 'button');
    } else if (button_link_other === "link") {
      my_robust_click(text, 'a');
    } else {
      my_robust_click(text);
    }
  } else {
    // For desktop view, click the button/link directly
    if (button_link_other === "button") {
      my_robust_click(text, 'button');
    } else if (button_link_other === "link") {
      my_robust_click(text, 'a');
    } else {
      my_robust_click(text);
    }
  }
});

Then("the url will contain {string}", (url) => {
  cy.wait(10000);
  cy.url().should("contains", url);
});

When("User selects {string} from {string}", (option, whatEverIwannaSay) => {
  // Dynamically find the select element by matching the label text
  cy.contains('label', whatEverIwannaSay)  // Find label with text 'whatEverIwannaSay'
    .siblings('div')  // Find the container of the select element (if wrapped)
    .find('select')  // Find the select element inside the container
    .should('be.visible')  // Ensure it is visible
    .select(option);  // Select the option

  // Click on the "Continue" button (ensure you are targeting the correct one)
  cy.xpath(`//*[contains(text(),"Continue")]`).first().click({ force: true });
});


Then('User should see {string}', (text) => {
  cy.contains(text, { timeout: 10000 })
    .should('be.visible');
})

Then('User should see {string} in {string} view', (text, view) => {
  switch (view) {
    case "mobile":
      // Check if the footer navigation is present and scroll to it if necessary
      cy.get("body").then(($body) => {
        if ($body.find(".site-footer__nav__menu").length > 0) {
          // Ensure the footer is visible and scroll to it
          cy.get(".site-footer__nav__menu").scrollIntoView().should('be.visible');
        }
      });

      // Scroll down to the element containing the text and ensure visibility
      cy.contains(text).scrollIntoView().should('be.visible');
      break;

    case "desktop":
      // Simply check if the text is visible on desktop
      cy.contains(text).should('be.visible');
      break;
  }
});

Then('User should see button {string}', (text) => {
  cy.xpath(`//span[contains(text(),"${text}")]`).should('be.visible');
})

Then('User should see link {string}', (text) => {
  cy.xpath(`//a[contains(text(),"${text}")]`).should('be.visible');
})
