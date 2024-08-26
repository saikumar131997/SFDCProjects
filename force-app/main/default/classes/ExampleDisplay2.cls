public with sharing class ExampleDisplay2 {
    public string FirstName{set;get;}
    public string LastName{set;get;}
    public string message1{set;get;}
    public string message2{set;get;}
    public void ShowFirstName(){
        message1='Welcome ' +FirstName; 
    }
    public void ShowFullName(){
        message2='Welcome ' +FirstName +''+ LastName; 
    }
     public void ResetAction(){
        message1='';
        message2='';         
    }
}