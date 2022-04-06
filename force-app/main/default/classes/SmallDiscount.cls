public class SmallDiscount implements IDiscount {

    public Decimal calculateDiscount(Decimal amount) {
        return amount - (amount * .05);
    }
}
