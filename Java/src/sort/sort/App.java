package sort;

import java.io.File;
import java.io.FileWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(new File("Common/data1.txt"));
        Writer fw = new FileWriter("Java/javaresult.txt");

        ArrayList<Integer> list = new ArrayList<>();

        while(scan.hasNext()) {
            Integer data = Integer.parseInt(scan.next());
            list.add(data);
        }

        	
		for(int i = 1; i < 11; i++) {
			ArrayList copyList = (ArrayList<Integer>) list.clone();
			long t0 = System.nanoTime();
			Sorter.sortList(copyList);
			long t1 = System.nanoTime();
			double  tTot= (t1 - t0) / 1000000.0;
			String str = String.valueOf(tTot); 
			fw.write(i + ", " + str + "\r\n");
			
		}
		scan.close();
		fw.close();
		System.out.println("Program ran successfully!");
    }   
}