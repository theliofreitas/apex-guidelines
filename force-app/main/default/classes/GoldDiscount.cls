public class GoldDiscount implements IDiscount {

    public Decimal calculateDiscount(Decimal amount) {
        Discount_Setting__mdt discountSett = [SELECT Discount__c FROM Discount_Setting__mdt
                                              WHERE Class_to_Instantiate__c = 'GoldDiscount'];

        Decimal discount = discountSett.Discount__c;

        return amount - (amount * discount);
    }
}