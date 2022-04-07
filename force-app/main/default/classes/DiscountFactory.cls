public class DiscountFactory {

    public static IDiscount getDiscountInstance(String tier) {
        Discount_Setting__mdt discountSett = [SELECT Class_to_Instantiate__c FROM Discount_Setting__mdt
                                              WHERE Tier__c = :tier];
        
        Type t = Type.forName(discountSett.Class_to_Instantiate__c);
        IDiscount discountInstance = (IDiscount)t.newInstance();

        return discountInstance;
    }
}
