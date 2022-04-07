public class DiscountCalculator {
    private Opportunity opp;
    IDiscount discount;

    public DiscountCalculator(Opportunity opp) {
        this.opp = opp;
        this.discount = DiscountFactory.getDiscountInstance(opp.Tier__c);
    }

    public Decimal getDiscount() {
        Decimal result = discount.calculateDiscount(opp.Amount);
        return result;
    }
}
