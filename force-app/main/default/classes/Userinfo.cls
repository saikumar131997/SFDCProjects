public with sharing class Userinfo {
    public Userinfo() {

    }

    
    @AuraEnabled(cacheable=true)
    public static   List<userInput>  getUserData(String userName)
    {

        List<User> inpList = [SELECT Id, Name, Email FROM user WHERE Name =:userName WITH SECURITY_ENFORCED];
        userInput userInput1= new userInput();
        List<userInput> userInputList = new List<userInput>();
        for(User inp :inpList){
            userInput1.Id =inp.Id;
            userInput1.Name =inp.Name;
            userInput1.Email =inp.Email;
            userInputList.add(userInput1);
        }

        return userInputList;
    }

    public class userInput{
       public String Id;
         public String Name;
    public String Email;
    }

}