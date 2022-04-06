public class StandardDiscount implements IDiscount {

    public Decimal calculateDiscount(Decimal amount) {
        return amount - (amount * .25);
    }
}
