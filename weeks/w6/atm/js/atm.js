var checkDepositButton = document.getElementById('checkingDeposit');
var checkWithdrawButton = document.getElementById('checkingWithdraw');

var savingDepositButton = document.getElementById('savingsDeposit');
var savingWithdrawButton = document.getElementById('savingsWithdraw');

// var balance1 = document.getElementById('balance1');
// var balance2 = document.getElementById('balance2');


var savings = 0;
var check = 0;

var doDeposit = function() {
  var checkAmount = document.getElementById('checkingAmount').value;
  var balance = document.getElementById('balance1');
  check = check + parseInt(checkAmount);
  balance.innerHTML = "$" + check;
  color();
};

var doWithdraw = function() {
  var checkAmount = document.getElementById('checkingAmount').value;
  var balance = document.getElementById('balance1');
  if (checkAmount <= check) {
    check = check - parseInt(checkAmount);
    balance.innerHTML = "$" + check;
    color();
  }

  if (check === 0) {
    transfer();
  }

};

var doSavingsDeposit = function() {
  var savingAmount = document.getElementById('savingsAmount').value;
  var balance = document.getElementById('balance2');
  savings = savings + parseInt(savingAmount);
  balance.innerHTML = "$" + savings;
  color();
};

var doSavingsWithdraw = function() {
  var savingAmount = document.getElementById('savingsAmount').value;
  var balance = document.getElementById('balance2');
  if (savingAmount <= savings) {
    savings = savings - parseInt(savingAmount);
    balance.innerHTML = "$" + savings;
    color();
  }

};

var color = function() {
  if (savings === 0) {
  balance2.style.backgroundColor = "red";
  } else {
  balance2.style.backgroundColor = "#E3E3E3";
  }

  if (check === 0) {
  balance1.style.backgroundColor = "red";
  } else {
  balance1.style.backgroundColor = "#E3E3E3";
  }
}

var transfer = function() {
  check = check + savings;
}

checkDepositButton.addEventListener ('click',doDeposit);
checkWithdrawButton.addEventListener ('click',doWithdraw);

savingDepositButton.addEventListener ('click',doSavingsDeposit);
savingWithdrawButton.addEventListener ('click',doSavingsWithdraw);
