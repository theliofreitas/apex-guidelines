public class BankAccountStandard extends BankAccount{
    public BankAccountStandard(BankManager bankManager, BankCustomer bankCustomer) {
        super(bankManager, bankCustomer);
    }

    public override void increaseLimit(Double value) {
        Double maximumLimit = 2000;
        Double newLimit = this.limitValue + value;

        if (newLimit > maximumLimit) {
            System.debug('You can\'t have a limit greather than $ ' + maximumLimit);
        }
        else {
            this.limitValue = newLimit;
            System.debug('New limit value: $ ' + this.limitValue);
        }
    }

    public override void withdraw(Double value) {
        if (value > this.balanceValue) {
            System.debug('Insufficient funds');
        }
        else if (value <= this.balanceValue) {
            Double percentage = value / balanceValue; 
            if (percentage > 0.5) {
                System.debug('You can\'t withdraw more than 50% of your funds in a single transaction');
            }
            else {
                this.balanceValue -= value;
                System.debug('You withdrew $ ' + value);
                System.debug('New balance $ ' + this.balanceValue);
            }
        }
    }
}
