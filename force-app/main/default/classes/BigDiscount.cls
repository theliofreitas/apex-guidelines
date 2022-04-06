public class BigDiscount implements IDiscount {

    public Decimal calculateDiscount(Decimal amount) {
        return amount - (amount * .5);
    }
}
