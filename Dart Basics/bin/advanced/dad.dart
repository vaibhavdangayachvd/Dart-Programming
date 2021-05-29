void main() {
  num amount = 214000, percentage = 16.0, monthly = 23000, months = 10;
  num monthlyPercentage = percentage / 12;
  num totalInterestEarning = 0;
  var currentAmount = amount;
  for (var i = 0; i < months; ++i) {
    num currentInterest = monthlyPercentage / 100.0 * currentAmount;
    totalInterestEarning += currentInterest;
    var temp = currentAmount;
    currentAmount -= (monthly - currentInterest);
    print(
        'Month ${(i + 1)} : ${temp.toStringAsFixed(2)} - $monthly + ${currentInterest.toStringAsFixed(2)}(Interest) = ${currentAmount.toStringAsFixed(2)}(Amount Left)');
  }
}
