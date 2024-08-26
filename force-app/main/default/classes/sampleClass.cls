public class sampleClass {

    public static void someMethod()
    {
            List<sampleObject__mdt> mList =[SELECT coerepname__c FROM sampleObject__mdt];
             List<Case> cList =[SELECT Id , Description  FROM Case];
            System.debug('testcard0 '+mList);
         System.debug('testcard0.1 '+cList);
         List<Account> aList = new List<Account>();
         for(Case c : cList)
        {
            for(sampleObject__mdt rec : mList)
             {
            System.debug('testcard1 '+rec);
            if(String.isNotBlank(c.Description) && (rec.coerepname__c.contains(c.Description)))
            {
                Account a = new Account();
                a.Name=rec.coerepname__c;
                aList.add(a);
                System.debug('testcard2 '+a);
            }
           // insert aList;
        }
        }
        
 
  
    }

    
}