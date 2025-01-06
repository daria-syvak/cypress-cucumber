import {
  Given,
  When,
  Then,
} from "@badeball/cypress-cucumber-preprocessor";
const { generateRandomEmail, generateRandomPassword } = require('../../e2e/features/utils/randomData.js');

// beforeEach(() => {
//   cy.viewport(375,812);  // Set viewport to iPhone 13 Pro Max dimensions
// });

When('The user clicks on {string}', (text) => {
  cy.contains(text).click();
});

  Given('User Landed on welcome page', () => {
    cy.visit('https://app-staging.savewise.ai/');
  });
  
  
    When('User should be redirected to the dashboard', () => {
      cy.wait(7000); 
      cy.url().should('include', '/dashboard');
      
    });

    When('User should be redirected to ammount setup page', () => {
      cy.wait(7000); 
        cy.url().should('include', '/set-goal');
        
      });

      When('User should see a menu btn', () => {
        cy.get('button[aria-expanded="false"]')  
        .should('be.visible');
      });




      When('User navigates to the login page', () => {
        cy.url().should('include', '/log-in');
        cy.contains("Email").should('be.visible'); 
        cy.contains("Password").should('be.visible'); 
        cy.contains('Forgot Password?').should('be.visible'); 
      });
    
    
      When('User navigates to the registration page', () => {
        cy.url().should('include', '/sign-up');
        cy.contains("Email").should('be.visible'); 
        cy.contains("Password").should('be.visible'); 
      
      });
    
      When('User enters a valid email and password', () => {
        cy.get('input[aria-label="Input Field"]').first().should('be.visible').type('qa_test@gmail.com');
        cy.get('input[type="password"]').should('be.visible').type('qa_test@gmail.com'); 
    
    });
    
    When('User enters a valid new email and new password', () => {
      const email = generateRandomEmail();  // Generate a random email
      const password = generateRandomPassword();  // Generate a random password
      // Enter the generated email and password into the fields
      cy.get('input[aria-label="Input Field"]').first().should('be.visible').type(email);
      cy.get('input[type="password"]').should('be.visible').type(password);
    });
    
    // When('User has requested a password reset', () => {
    //   cy.get('input[placeholder="Enter email"]').type('testuser@example.com'); 
    //   cy.contains("Reset Password").should('be.visible'); 
    //   cy.get('button[role="button"]').last().click();
    // });
    
    When('And User clicks the login button', () => {
      // cy.contains("Log in").should('be.visible'); 
      cy.get('button[role="button"]').first().click();
     });
    
     When('User clicks the create account button', () => {
      cy.get('button[role="button"]').first().click();
     });
    
    
     When('User successfully login', () => {
      cy.contains("Log in").click();
      cy.get('input[aria-label="Input Field"]').first().should('be.visible').type('newtestuser@gmail.com'); 
      cy.get('input[type="password"]').should('be.visible').type('newtestuser123');
      cy.get('button[role="button"]').first().click();
      });    
      
      When('User successfully registred', () => {
        cy.contains("Get Started").click();
        const email = generateRandomEmail();  // Generate a random email
        const password = generateRandomPassword();  // Generate a random password
      // Enter the generated email and password into the fields
      cy.get('input[aria-label="Input Field"]').first().should('be.visible').type(email);
      cy.get('input[type="password"]').should('be.visible').type(password);
      cy.get('button[role="button"]').first().click();
        });  

        When('User should see $20 default value', () => {
          cy.get('.css-11aywtz')
          .should('have.value', '20');
          });    

          Given('User sets a goal amount {string}', (amount) => {
            cy.get('.css-11aywtz')     // Replace with the selector for the input field
              .clear()
              .type(amount)
              .should('have.value', amount); // Verify that the input has the specified value 
          cy.get('button[role="button"]').eq(2).click({ force: true });

        });    

        Given('User adding amout {string}', (amount) => {
          cy.get('.css-11aywtz')     // Replace with the selector for the input field
            .clear()
            .type(amount)
            .should('have.value', amount); // Verify that the input has the specified value 
        cy.get('button[role="button"]').eq(6).click({ force: true });

      });  

      Then('User should see the following {string}', (category) => {
        // Verify the category is visible on the page
        cy.contains(category).should('be.visible');
      });
      
      Then('User clicks on {string} and sets the goal amount {string}', (category, amount) => {
        // Click on the category
        cy.contains(category).click();
       cy.contains("Add custom amount").click();
        // Set the goal amount in the input field
        cy.get('.css-11aywtz')  // Replace with the actual selector for the input field
          .clear()
          .type(amount)
          .should('have.value', amount); // Verify the input value is correct
      });
  

      Then('User sets saving to each category', () => {
        const categoriesAndAmounts = [
          { category: 'Online Shopping', amount: '10' },
          { category: 'Going Out', amount: '20' },
          { category: 'Takeout & Delivery', amount: '15' },
          { category: 'Snacks & Sweets', amount: '15' },
          { category: 'Coffee Shops', amount: '5' },
          { category: 'Other', amount: '35' }
        ];
      
        categoriesAndAmounts.forEach(({ category, amount }) => {
          // Click on the category
          cy.contains(category).click();
          
          // Click "Add Custom Amount" button
          // cy.contains('Add Custom Amount').click();
          cy.contains('Add custom amount').scrollIntoView().should('be.visible').click();
          // Set the goal amount
          cy.get('.css-11aywtz') // Replace with the correct selector for the goal input field
            .clear()
            .type(amount)
            .should('have.value', amount);
            cy.get('button[role="button"]').eq(6).click({ force: true });
        });
      });

      When('User increase goal amount {int} times', (times) => {
        for (let i = 0; i < times; i++) {
          cy.get('button[role="button"]').eq(1).click(); // Click the button to increase the goal amount
        }
        cy.wait(700);
      });

      When('User decrease goal amount {int} times', (times) => {
        for (let i = 0; i < times; i++) {
          cy.get('button[role="button"]').eq(0).click(); // Click the button to increase the goal amount
        }
      });

      When('User enters a bad email', () => {
        cy.get('input[aria-label="Input Field"]').first().should('be.visible').type('test@com');
        cy.get('input[type="password"]').should('be.visible').type('goodpassword123'); 
        cy.get('button[role="button"]').first().click();
    
    });

    When('User enters a bad password', () => {
      const email = generateRandomEmail();  // Generate a random email
      cy.get('input[aria-label="Input Field"]').first().should('be.visible').type(email);
      cy.get('input[type="password"]').should('be.visible').type('123'); 
      cy.get('button[role="button"]').first().click();
  });
    
  When('User do not enters a password and email', () => {
    cy.get('input[aria-label="Input Field"]').first().should('be.visible');
    cy.get('input[type="password"]').should('be.visible'); 
    cy.get('button[role="button"]').first().click();
});
    
When('User enters already taken email', () => {
  cy.get('input[aria-label="Input Field"]').first().should('be.visible').type('qa_test@gmail.com');
  cy.get('input[type="password"]').should('be.visible').type('testpassword123'); 
  cy.get('button[role="button"]').first().click();
});

When('User enters a not valid email', () => {
  cy.get('input[aria-label="Input Field"]').first().should('be.visible').type('nouseremail@gmail.com');
  cy.get('input[type="password"]').should('be.visible').type('testpassword123'); 
  cy.get('button[role="button"]').first().click();
});
     
When('User enters a not valid password', () => {
  cy.get('input[aria-label="Input Field"]').first().should('be.visible').type('qa_test@gmail.com');
  cy.get('input[type="password"]').should('be.visible').type('testpassword1'); 
  cy.get('button[role="button"]').first().click();
});

When('User click on menu btn', () => {
  cy.get('button[aria-expanded="false"]').should('be.visible').click(); 
});

Then('The displayed date should match today\'s date', () => {
  // Get today's date in 'YYYY-MM-DD' format
  cy.wait(7000); 
  const today = new Date().toISOString().split('T')[0];
  cy.get('td.font-quicksand').first()// Adjust the selector if needed
  .invoke('text') // Get the text content of the element
  .then((displayedDate) => {
    // Trim any whitespace and compare
    expect(displayedDate.trim()).to.eq(today);
  });
});