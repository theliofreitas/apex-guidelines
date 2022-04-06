public class DiscountFactory {

    public static IDiscount getDiscount(Decimal amount) {
        if (amount >= 1000) {
            return new BigDiscount();
        }
        else if (amount >= 500) {
            return new StandardDiscount();
        }
        else {
            return new SmallDiscount();
        }
    }
}
