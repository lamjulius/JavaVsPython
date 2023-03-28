package sort;

import java.util.ArrayList;

public class Sorter {
    public static void sortList(ArrayList<Integer> xs) { //Insertion Sort
        for (int i = 1; i < xs.size(); i++) {
            int j = i;
            while (j > 0 && xs.get(j - 1) > xs.get(j)) {
                int temp = xs.get(j);
                xs.set(j, xs.get(j-1));
                xs.set(j-1, temp);
                j--;
            }
        }
    }
}
