public class StudentRecClass {
    public static void AttendanceCreate(List<Student__c> AttRec)
    {
     List<Attendance__c>  AttRec1 = New List<Attendance__c>();
        for (Student__c a:AttRec)
        {
            Attendance__c b = new Attendance__c();
            b.name='Jan';
            b.DaysPresent__c=0;
            AttRec1.add(b);                   
        }
        insert AttRec1;
    }
}