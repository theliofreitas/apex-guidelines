BankCustomer bankCustomer = new BankCustomer(
  'John', 
  'Doe', 
  Date.newInstance(1997, 04, 11)
);

BankManager bankManager = new BankManager(
  'Annie', 
  'Lockhart', 
  Date.newInstance(1989, 05, 01), 
  8000
);

BankAccount bankAccount = new BankAccount(
  bankManager,
  bankCustomer
);

System.debug('Customer age: ' + bankCustomer.getAge());