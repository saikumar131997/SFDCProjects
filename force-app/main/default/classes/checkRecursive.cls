public class checkRecursive {
    private static boolean run= true;
 public static Boolean runOnce()
 {
     if(run)
     {
         run=false;
         return true;
     }
     else
     {
          return run;
     }
 }
}