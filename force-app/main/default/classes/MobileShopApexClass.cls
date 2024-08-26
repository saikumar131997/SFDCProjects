public class MobileShopApexClass {
    public static void MobileDiscount(List<MobileShop__c> VarMobRec)
    {
     for (MobileShop__c VarP1 : VarMobRec) 
     {
       if (VarP1.Brand__C =='Apple')
       {
           VarP1.Price__c = VarP1.Price__c - (0.2 * VarP1.Price__c);
           VarP1.Discount_status__c='Congrats! you got 20% discount';
        }
          if (VarP1.Brand__C =='Samsung')
          {
           VarP1.Price__c = VarP1.Price__c - (0.1 * VarP1.Price__c);
     VarP1.Discount_status__c='Congrats! you got 10% discount';
           }
     }
     }
        public static void MobileDiscountlater(List<MobileShop__c> VarMobRec1)
    {
     for (MobileShop__c VarP2 : VarMobRec1) 
     {
       if (VarP2.Brand__C =='Apple')
       {  
       VarP2.Discount_status__c='No Discount';
       }
          if (VarP2.Brand__C =='Samsung')
            {
           VarP2.Price__c = VarP2.Price__c - (0.2 * VarP2.Price__c);
           VarP2.Discount_status__c='Congrats! you got 10% discount';
            }
    }
}
    }