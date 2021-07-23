class MyMath{
  MyMath._();

  static double lerpDouble(double a, double b, double t) {
    return a * (1.0 - t) + b * t;
  }
  static int lerpInt(int a, int b, double t) {
    return (a + (b - a) * t).round();
  }
}