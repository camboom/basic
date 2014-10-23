import java.io.*; 
import java.lang.Thread;

public class ThreadIssue {
   public static void main(String args[]) {
      int x=0;
      while(x<=10){
         new Thread(new Runnable(){
             public void run() {
                 try {
                     Thread.sleep(10000000);
                 } catch(InterruptedException e) { }        
             }    
         }).start();
 System.out.println("Generic Thread #" + x );
      x++;
      }

   }   

}
