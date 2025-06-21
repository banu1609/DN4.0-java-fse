public class Forecast {
    public static double futureValue(double presentValue, double rate, int periods) {
        if (periods == 0) {
            return presentValue;
        }
        return futureValue(presentValue * (1 + rate), rate, periods - 1);
    }

    public static double futureValueOptimized(double presentValue, double rate, int periods) {
        return presentValue * Math.pow(1 + rate, periods);
    }
}
