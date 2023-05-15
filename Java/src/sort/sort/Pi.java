package sort;

public class Pi {
    public static void piEstimate() {
        int n = 100000000;
        double pi = 0.0;
        for (int i = 1 - 2 * n; i <= 2 * n; i += 4) {
            pi += 1.0 / i;
        }
        pi *= 4;
    }
}
