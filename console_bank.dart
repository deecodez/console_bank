import 'dart:io';

class AccountDetails {
  var accountName;
  var accountNumber;
  var accountBalance;

  AccountDetails(this.accountBalance, this.accountName, this.accountNumber);
}

viewAccountBalance() {
  AccountDetails person1 = AccountDetails(10000, 'Mentor', '10101010');
  print(
      'Hello ${person1.accountName}, your account balance is: \$${person1.accountBalance}');
}

deposit() {
  AccountDetails person1 = AccountDetails(10000, 'Mentor', '10101010');
  print("Hello ${person1.accountName} Enter amount you want to deposit: ");
  int amountDeposited = int.parse(stdin.readLineSync()!);
  int newAccountBalance = (person1.accountBalance) + amountDeposited;
  print(
      "Hello ${person1.accountName} Your deposit of \$$amountDeposited was successful \n");
  print("Your Balance now is: \$$newAccountBalance");
}

withdrawal() {
  AccountDetails person1 = AccountDetails(10000, 'Mentor', '10101010');
  print("Hello ${person1.accountName} Enter amount you want to withdraw: ");
  int amountToWithdraw = int.parse(stdin.readLineSync()!);

  if (amountToWithdraw > (person1.accountBalance)) {
    print("Unable to withdraw due to Insufficient funds!");
  } else {
    int newAccountBalance = (person1.accountBalance) - amountToWithdraw;
    print("\$$amountToWithdraw has been withdrawed successfully\n");
    print("Your Balance now is: \$$newAccountBalance");
  }
}

void main() {
  AccountDetails person1 = AccountDetails(10000, 'Mentor', '10101010');
  print(
      'Hello ${person1.accountName} Enter 1 to view account balance, Enter 2 to deposit, Enter 3 to withdraw');
  int inputNumber = int.parse(stdin.readLineSync()!);
  if (inputNumber == 1) {
    viewAccountBalance();
  } else if (inputNumber == 2) {
    deposit();
  } else if (inputNumber == 3) {
    withdrawal();
  } else {
    print("You have enter a invalid number, Try again");
  }
}
