public class updateClientContactFieldClass {

    public static List<Account> updateClientContactFieldMethod(List<Account> accRecords)
    {
        List<Contact> cList = new List<Contact>();
        Set<Id> Ids= new Set<Id>();
        for(Account acc : accRecords)
        {
            Contact c = new Contact();
            c.AccountId=acc.Id;
            c.LastName=acc.Name;
            cList.add(c);  
            Ids.add(c.AccountId);
        }
        if(cList.size()>0)
        {
            insert cList;
        }
        List<Account> accList= [SELECT Id, ClientContact__c FROM Account WHERE Id IN : Ids];
         List<Account> accTotList = new   List<Account>();
        Map<Id, Account> accMapVar= new Map<Id, Account>();
        for(Account acc1 :accList )
        {
            accMapVar.put(acc1.Id, acc1);
        }
        for(Contact c : cList)
        {
            if(accMapVar.containsKey(c.AccountId))
            {
                Account a = accMapVar.get(c.AccountId);
                a.ClientContact__c=c.Id;
                accTotList.add(a);
            }
        }
        if(accTotList.size()>0)
        {
            update accTotList;
        }
        return accTotList;
    }
  
}