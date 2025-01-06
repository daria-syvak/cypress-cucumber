import {Given, When, Then, Before} from "@badeball/cypress-cucumber-preprocessor";
import { leadSubmissionPage } from '../../e2e/features/pages/LeadSubmissionPage';
const users = require('../../e2e/features/fixtures/lead_submission_data.json');

When("User submits lead for email {string}", (email) => {
  const user = users.find(u => u.email === email);
  if (!user) {
    throw new Error(`User with email ${email} not found`);
  }

  // Log the user data to ensure it's correct
  cy.log('User:', user);

  leadSubmissionPage.leadSubmission(user);
});

When("User submits lead for email {string} with optional info", (email) => {
  const user = users.find(u => u.email === email);
  if (!user) {
    throw new Error(`User with email ${email} not found`);
  }

  // Log the user data to ensure it's correct
  cy.log('User:', user);
  leadSubmissionPage.leadSubmissionWithOptionalField(user);
});

When("User submits leads", () => {
  leadSubmissionPage.leadSubmission();
});

When("User submits ALA lead form for email {string}", (email) => {
  const user = users.find(u => u.email === email);
  if (!user) {
    throw new Error(`User with email ${email} not found`);
  }

  // Log the user data to ensure it's correct
  cy.log('User:', user);

  leadSubmissionPage.leadSubmissionALA(user);
});