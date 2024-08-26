public class UpdateAccountFields implements Database.Batchable<sObject>
{
   public final String Query;
   public final String Entity;
   public final String Field;
   public final String Value;

    //Initializing the custructors variables
   public UpdateAccountFields(String q, String e, String f, String v)
   {
             Query=q; Entity=e; Field=f;Value=v;
   }

   public Database.QueryLocator start(Database.BatchableContext BC)
   {
      return Database.getQueryLocator(query);
   }

   public void execute(Database.BatchableContext BC, 
                       List<sObject> scope)
      {
      for(Sobject s : scope)
      {
          s.put(Field,Value); 
      }      
      update scope;
      }

   public void finish(Database.BatchableContext BC){
       AsyncApexJob a=[select Id, status, NumberOfErrors,JobItemsProcessed,TotalJobItems,
                      CreatedBy.Email from AsyncApexJob where id=:bc.getJobId()];
       Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
       String[] toAddressess= new String[]{a.CreatedBy.Email};
           mail.setToAddresses(toAddressess);
       mail.setSubject('Apex sharing Recalculation' + a.Status);
       mail.setPlainTextBody('The batch Apex job processed ' + a.TotalJobItems +
   ' batches with '+ a.NumberOfErrors + ' failures.' );
       Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
   }
}