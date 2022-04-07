@isTest
private class DiscountCalculatorTest {
    
    @isTest
    static void testSmallDiscount() {
        Opportunity opp = new Opportunity(Amount=100, Tier__c='Bronze');
        DiscountCalculator discountCalc = new DiscountCalculator(opp);
        Decimal result = discountCalc.getDiscount();

        System.assertEquals(95, result);
    }

    @isTest
    static void testStandardDiscount() {
        Opportunity opp = new Opportunity(Amount=100, Tier__c='Silver');
        DiscountCalculator discountCalc = new DiscountCalculator(opp);
        Decimal result = discountCalc.getDiscount();

        System.assertEquals(90, result);
    }

    @isTest
    static void testBigDiscount() {
        Opportunity opp = new Opportunity(Amount=100, Tier__c='Gold');
        DiscountCalculator discountCalc = new DiscountCalculator(opp);
        Decimal result = discountCalc.getDiscount();

        System.assertEquals(85, result);
    }
}
