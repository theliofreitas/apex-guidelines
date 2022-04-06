public class DiscountCalculator {
    private Opportunity opp;
    IDiscount discount;

    public DiscountCalculator(Opportunity opp) {
        this.opp = opp;
        this.discount = DiscountFactory.getDiscount(opp.Amount);
    }

    public Decimal getDiscount() {
        Decimal result = discount.calculateDiscount(this.opp.Amount);
        return result;
    }
}
