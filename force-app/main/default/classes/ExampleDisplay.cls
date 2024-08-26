public with sharing class ExampleDisplay {
    public string FirstName{set;get;}
    public string MiddleName{set;get;}
    public string LastName{set;get;}
    public string message{set;get;}
    public void ShowFullName(){
        message='Welcome ' +FirstName +MiddleName+LastName; 
    }
        

}