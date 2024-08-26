@IsTest(seeAlldata=false)
public class sampleTestClass {
 @isTest static void testMethod1()
 {
     Test.startTest();
      Case c= new Case();
    // c.Name ='test1';
      c.Description='400';
      insert c;
     sampleClass.someMethod();
     Test.stopTest();
 }
}