List<double> convertToF(List<double> temperaturesInC) {
  var fahrenheit = temperaturesInC.map((t) => 
    double.parse(((t * 9/5) + 32).toStringAsFixed(2))).toList();
  return fahrenheit;
}