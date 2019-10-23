const path = require('path');
const fs = require('fs');
const solc = require('solc');

const timeTokenPath = path.resolve(__dirname, 'contracts', "TimeToken.sol");
const timeTokenSalePath = path.resolve(__dirname, 'contracts', "TimeTokenSale.sol");
const timeTokensource = fs.readFileSync(timeTokenPath, 'utf8');
const timeTokenSalesource = fs.readFileSync(timeTokenSalePath, 'utf8');

const input = {
  sources: {
    'TimeToken.sol': timeTokensource,
    'TimeTokenSale.sol': timeTokenSalesource
  }
};
module.exports = solc.compile(input, 1));
