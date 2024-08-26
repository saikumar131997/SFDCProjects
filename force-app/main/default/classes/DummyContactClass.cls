public class DummyContactClass {
    public static void CreateContact(List<Account> MyAccList)
    {
        List<Contact> ListForAllRecords = New list<Contact>();
        for(Account TempAcc:MyAccList)
        {
            if(TempAcc.NumberOfEmployees < 1000)
            {
                Contact c= New Contact();
                c.FirstName='Admin';
                c.LastName='General';
                c.AccountId=TempAcc.id;
                ListForAllRecords.add(c);
            }
        }
        insert ListForAllRecords;
    }

}