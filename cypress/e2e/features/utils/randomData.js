function generateRandomEmail() {
    const timestamp = Date.now(); // Ensures the email is unique
    return `user${timestamp}@test.com`;
  }
  function generateRandomPassword() {
    const timestamp = Date.now(); // Unique password
    return `Password${timestamp}`;
  }
  
  module.exports = {
    generateRandomEmail,
    generateRandomPassword
  };