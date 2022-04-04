public abstract class BankAccount {
    // Getters & Setters / Encapsulation
    public BankManager bankManager { get; private set; }
    public BankCustomer bankCustomer { get; private set; }
    public Integer accountNumber { get; private set; }
    public Double balanceValue { get; protected set; }
    public Double limitValue { get; protected set; }

    @TestVisible // Set the password property visible for test classes
    private String password;

    public BankAccount(BankManager bankManager, BankCustomer bankCustomer) {
        this.bankManager = bankManager;
        this.bankCustomer = bankCustomer;
        this.balanceValue = 0;
        this.limitValue = 0;
        
        generateAccountNUmber();
    }
    
    private void generateAccountNumber() {
        Integer randomNumber = Integer.valueof((Math.random() * 1000));

        this.accountNumber = randomNumber;
    }

    // Must be implemented by child classes
    public abstract void increaseLimit(Double value);

    // Must be implemented by child classes
    public abstract void withdraw(Double value);

    // Can be modified by child classes
    public virtual void deposit(Double value) {
        this.balanceValue += value;
        System.debug('You deposited $ ' + value);
        System.debug('New balance $ ' + this.balanceValue);
    }
}
