@isTest
private class DiscountCalculatorTest {
    
    @isTest
    static void testSmallDiscount() {
        Opportunity opp = new Opportunity(Amount=100);
        DiscountCalculator discountCalc = new DiscountCalculator(opp);

        Decimal result = discountCalc.getDiscount();

        System.assertEquals(95, result);
    }

    @isTest
    static void testStandardDiscount() {
        Opportunity opp = new Opportunity(Amount=600);
        DiscountCalculator discountCalc = new DiscountCalculator(opp);

        Decimal result = discountCalc.getDiscount();

        System.assertEquals(450, result);
    }

    @isTest
    static void testBigDiscount() {
        Opportunity opp = new Opportunity(Amount=1000);
        DiscountCalculator discountCalc = new DiscountCalculator(opp);

        Decimal result = discountCalc.getDiscount();

        System.assertEquals(500, result);
    }
}
