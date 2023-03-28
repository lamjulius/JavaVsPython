package sort;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(new File("data1.txt"));

        ArrayList<Integer> list = new ArrayList<>();

        while(scan.hasNext()) {
            Integer data = Integer.parseInt(scan.next());
            list.add(data);
        }

        Sorter.sortList(list);
        System.out.println(list);
    }   
}
