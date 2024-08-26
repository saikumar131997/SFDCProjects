public class OwnerCheckClass {
   public static void DeleteAcc(List<Account> Acclist)
   {
       for(Account a :Acclist)
           if(a.OwnerId!=UserInfo.getUserId())
       {
           a.addError('only owner can delete!');
       }
   }
}