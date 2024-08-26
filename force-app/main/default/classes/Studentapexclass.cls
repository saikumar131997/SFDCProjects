public class Studentapexclass {
    public static void StudentEligibility(List<Student__c> VarSN)
    {
        for (Student__c VarP :VarSN)
        {
           if(VarP.Age__c <=30 && VarP.Experience__c >8)
           {
               VarP.Status__c='Selected';
           }   
           if(VarP.Age__c <=30 && VarP.Experience__c <8)
           {
              VarP.Status__c='notSelected'; 
           }   
                          
         
        }
    }
}