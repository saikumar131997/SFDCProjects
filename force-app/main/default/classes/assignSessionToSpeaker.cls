public class assignSessionToSpeaker {
   
    public static void assignSession(list<Session_Speaker__c> a)
    {        
        for(Session_Speaker__c b:a)
        {

                    if(b.Speaker__r.Expertize_Skill__c=='JAVA') 
                             {
                                  b.Speaker__r.Assigned_Session__c='Java Programming';
                             }
                          
        }
    }
}