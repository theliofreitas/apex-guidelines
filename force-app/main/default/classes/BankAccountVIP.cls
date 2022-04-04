public class BankAccountVIP extends BankAccount{
    public BankAccountVIP(BankManager bankManager, BankCustomer bankCustomer) {
        super(bankManager, bankCustomer);
    }

    public override void increaseLimit(Double value) {
        this.limitValue += value;
        System.debug('New limit value: $ ' + this.limitValue);
    }

    public override void withdraw(Double value) {
        if (value > this.balanceValue) {
            System.debug('Insufficient funds');
        }
        else if (value <= this.balanceValue) {
            this.balanceValue -= value;
            System.debug('You withdrew $ ' + value);
            System.debug('New balance $ ' + this.balanceValue);
        }
    }
}
