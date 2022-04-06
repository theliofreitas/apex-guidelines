BankManager manager = new BankManager(
  'Tywin', 
  'Lannister', 
  Date.newInstance(1945, 07, 12), 
  'user1',
  'pass1',
  9500
);

BankEmployee employee = new BankEmployee(
  'Tyrion', 
  'Lannister', 
  Date.newInstance(1975, 05, 01), 
  'user2',
  'pass2',
  5000
);

// Get Manager information:
System.debug('==== Manager Info ====');
System.debug('Name: ' + manager.getName());
System.debug('Age: ' + manager.getAge());
System.debug('Salary: ' + manager.getSalary());
System.debug('New salary: ' + manager.increaseSalary());

// Get Employee information:
System.debug('==== Employee Info ====');
System.debug('Name: ' + employee.getName());
System.debug('Age: ' + employee.getAge());
System.debug('Salary: ' + employee.getSalary());
System.debug('New salary: ' + employee.increaseSalary());

// Login method for managers/employees
System.debug('==== Logging in with employee & manager ====');
BankEmployee.login(manager, 'user1', 'pass1');
BankEmployee.login(employee, 'user2', 'wrong_pass');

BankCustomer customer = new BankCustomer(
  'John', 
  'Doe', 
  Date.newInstance(1997, 04, 11)
);

// Get Customer information:
System.debug('==== Customer Info ====');
System.debug('Name: ' + customer.getName());
System.debug('Age: ' + customer.getAge());

BankAccountStandard standardAccount = new BankAccountStandard(
  manager,
  customer
);

// Get Account information:
System.debug('==== Standard Account Info ====');
System.debug('Account Manager: ' + standardAccount.bankManager.getName());
System.debug('Account Customer: ' + standardAccount.bankCustomer.getName());
System.debug('Account Number: ' + standardAccount.accountNumber);

// Do operations in the account:
standardAccount.deposit(500);
standardAccount.withdraw(400);
standardAccount.withdraw(70);
standardAccount.increaseLimit(3000);
standardAccount.increaseLimit(1000);

BankAccountVIP VIPAccount = new BankAccountVIP(
  manager,
  customer
);

// Get Account information:
System.debug('==== VIP Account Info ====');
System.debug('Account Manager: ' + VIPAccount.bankManager.getName());
System.debug('Account Customer: ' + VIPAccount.bankCustomer.getName());
System.debug('Account Number: ' + VIPAccount.accountNumber);

// Do operations in the account:
VIPAccount.deposit(500);
VIPAccount.withdraw(400);
VIPAccount.increaseLimit(3000);

// Discount
System.debug('==== Discount Calculator ====');
Opportunity opp = new Opportunity(Name='Opp 1', Amount=700);
DiscountCalculator discountCalc = new DiscountCalculator(opp);
System.debug(discountCalc.getDiscount());
