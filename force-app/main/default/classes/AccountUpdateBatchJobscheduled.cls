global class AccountUpdateBatchJobscheduled implements Schedulable 
{
    global void execute(SchedulableContext sc) 
    {
        //AccountUpdateBatchJob b = new AccountUpdateBatchJob();
        String q='select name from Account LIMIT 2';
        String e='Account';
        String f='Industry';
        String v='Consulting'; 
        UpdateAccountFields UpdAcc= new UpdateAccountFields(q,e,f,v);
        database.executebatch(UpdAcc,4);
    }
}