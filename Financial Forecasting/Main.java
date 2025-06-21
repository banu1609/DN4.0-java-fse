public class Main {
    public static void main(String[] args) {
        double pv = 1000;
        double rate = 0.05;
        int years = 10;

        double fvRecursive = Forecast.futureValue(pv, rate, years);
        double fvOptimized = Forecast.futureValueOptimized(pv, rate, years);

        System.out.println("Future Value (Recursive): " + fvRecursive);
        System.out.println("Future Value (Optimized): " + fvOptimized);
    }
}
