public  with sharing class sc_Securities {
 
    @AuraEnabled(cacheable=true)
    public static List<sObject> findShares(){
         String query='SELECT Name, Security_Name__c,ISIN__c  FROM Security_Master__c ORDER BY  Security_Name__c';
        system.debug('final result -->'+ Database.query(query));
        return Database.query(query);
    }
}