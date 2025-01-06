import {Given, When, Then, Before} from "@badeball/cypress-cucumber-preprocessor";
import {ccpaPage} from '../../e2e/features/pages/CCPAPage'

When("User submits ccpa form", () => {
  ccpaPage.ccpaSubmit();
});

