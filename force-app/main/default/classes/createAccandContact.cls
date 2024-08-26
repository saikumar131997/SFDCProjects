public class createAccandContact {
public static void createContactRec(list<Account> acc)
{
    list<Contact> clist = new list<contact>();
      //set<Id>  accIds= new set<Id>();
    for(account a:acc)
    {
    // accIds.add(a.Id);
    Contact c= new contact();
    c.Profile__c = a.website + '/' + c.firstname.left(1) + c.LastName;
    clist.add(c);
    }   
     update clist; 
   }
}