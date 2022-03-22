// You can’t throw built-in Apex exceptions. You can only catch them. 
// But with custom exceptions, you can throw and catch them in your methods. 
// Custom exceptions enable you to specify detailed error messages and have more custom error handling in your catch blocks.
public  class BankCustomerException extends Exception {}