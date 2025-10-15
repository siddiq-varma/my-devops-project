// very small test using built-in assert
const assert = require('assert');
const app = require('../index.js');

// Example test: checks exported message
assert.strictEqual(app.message, "Hello from my-devops-project");

console.log("All tests passed.");
