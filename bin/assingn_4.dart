/*
Define an abstract class Account with the following properties:
● accountNumber (integer)
● balance (double)
It should also have the following methods:
● deposit(double amount): Adds the specified amount to the account balance.
● withdraw(double amount): Abstract method that deducts the specified amount from
the account balance.
Define a class SavingsAccount that extends the Account class. It should have an additional
property called interestRate (double).
Implement the withdraw() method in the SavingsAccount class as follows:
● Subtract the specified amount from the account balance.
● Apply the interest rate to the remaining balance.
Define a class CurrentAccount that extends the Account class. It should have an
additional property called overdraftLimit  (double).
Implement the withdraw() method in the CurrentAccount class as follows:
● Allow withdrawals up to the overdraft limit.
● If the withdrawal amount exceeds the overdraft limit, print a message indicating
insufficient funds.


In main()
● Create an instance of the SavingsAccount class by providing values for the account
number, initial balance, and interest rate.
● Use the instance to perform operations like depositing and withdrawing money.
● Create an instance of the CurrentAccount class by providing values for the account
number, initial balance, and overdraft limit.
● Use the instance to perform operations like depositing and withdrawing.
 */

abstract class  Account{
  int accountNumber;
  double balance;

  Account(this.accountNumber,this.balance);

// method here.

  void  deposit(double amount){
    amount += balance;
    print('Deposit is $amount, New Balance is $balance');
  }
  void withdraw(double amount);
}

//Define here a class SavingsAccount that extends the Account class.

class SavingsAccount extends Account{
  double interestRate;
  SavingsAccount(int accountNumber, double balance, this.interestRate):
        super(accountNumber,balance);

//Implement the withdraw() method in the SavingsAccount class as follows:

  @override
  void withdraw(double amount){
    amount += balance;
    amount -= balance * interestRate;
    print("Withdraw is $amount, New Balance is $balance");
  }
}

//Define a class CurrentAccount that extends the Account class.

class CurrentAccount extends Account{

  double overdraftLimit;
  CurrentAccount(int accountName, double balance, this.overdraftLimit):
        super(accountName,balance);


//Implement the withdraw() method in the CurrentAccount class as follows:

  @override
  void withdraw(double amount){
    if(amount <= balance + overdraftLimit){
      print("Withdraw is $amount, New Balance is $balance");
    }else{
      print('insufficient funds');
    }
  }

}
void main() {
  SavingsAccount s1 = SavingsAccount(105, 20000000, 0.5);
  s1.deposit(500000);
  s1.withdraw(300000);


  CurrentAccount c1 = CurrentAccount(105, 95000000, 0.5);
  s1.deposit(500000);
  s1.withdraw(300000);
}
