public class MyfirstApexclass {
    public static void beforeAccountInsert(list<Account>  VarA)
    {
        for (Account varA1: VarA )
        {
            if(varA1.Industry =='Chemicals')
            {
                varA1.Name='HONDA';
              
            }
             if(varA1.Industry =='Banking')
            {
                varA1.Name='ANDHRA';             
            }
        }
    }
    public static void beforeAccountUpdate(list<Account>  VarA)
    {
        for (Account varA2: VarA )
        {
            if(varA2.Industry =='Chemicals')
            {
                varA2.Description='Contact updated successfully by'+ userInfo.getUserName();             
            }
             if(varA2.Industry =='Banking')
            { 
                   varA2.Description='Contact updated successfully by'+ userInfo.getUserName();
     
            }
        }
    }

}