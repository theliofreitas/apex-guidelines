public class BankAccount {
    // Getters & Setters / Encapsulation
    public BankCustomer bankCustomer { get; private set; }
    public Integer accountNumber { get; private set; }
    public Double balanceValue { get; private set; }
    public Double limitValue { get; private set; }
    @TestVisible // Set the password property visible for test classes
    private String password;

    public BankAccount() {
        
    }
}
