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
System.debug('Name: ' + manager.getName());
System.debug('Age: ' + manager.getAge());
System.debug('Salary: ' + manager.getSalary());
System.debug('New salary: ' + manager.increaseSalary());

// Get Employee information:
System.debug('Name: ' + employee.getName());
System.debug('Age: ' + employee.getAge());
System.debug('Salary: ' + employee.getSalary());
System.debug('New salary: ' + employee.increaseSalary());

// Login method for managers/employees
BankEmployee.login(manager, 'user1', 'pass1');
BankEmployee.login(employee, 'user2', 'wrong_pass');

BankCustomer customer = new BankCustomer(
  'John', 
  'Doe', 
  Date.newInstance(1997, 04, 11)
);

// Get Customer information:
System.debug('Name: ' + customer.getName());
System.debug('Age: ' + customer.getAge());

BankAccount account = new BankAccount(
  manager,
  customer
);

// Get Account information:
System.debug('Account Manager: ' + account.bankManager.getName());
System.debug('Account Customer: ' + account.bankCustomer.getName());
System.debug('Account Number: ' + account.accountNumber);