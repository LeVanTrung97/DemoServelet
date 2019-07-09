package tutorial.jsp.utils;

import java.io.FileInputStream;
import java.io.IOException;

public class Docfile {
	 public static void main(String args[]) throws IOException {
	        FileInputStream fin = null;
	        try {
	            fin = new FileInputStream("file");
	            int i = 0;
	            while ((i = fin.read()) != -1) {
	                System.out.print((char) i);
	            }
	            fin.close();
	        } catch (Exception e) {
	            System.out.println(e);
	        } finally {
	            fin.close();
	        }
	    }

}
