//#1 Single Responsibility principle

void main() {
  OrderCalculator orderCalculator = OrderCalculator(
      taxPercentage: 10, tip: 10, totalAmount: 10, shipping: 10);
  num orderValue = orderCalculator.calculateOrder();
  EmailOrder.sendEmail(orderValue);
}

class OrderCalculator {
  num? totalAmount;
  num? taxPercentage;
  num? tip;
  num? shipping;

  OrderCalculator(
      {this.totalAmount, this.taxPercentage, this.tip, this.shipping});

  calculateOrder() {
    final orderValue = totalAmount! + taxPercentage! + shipping!;
    print("orderValue");
    //this is worong dont use sendEmail here as order and email should be
    // seperated so a new class needs to be created
    // sendEmail(orderValue);

    return orderValue;

    //instead of the above thing use the thing done in main
  }

/*  void sendEmail(num total) {
    final emailId = "shipper@demo.com";
    print("sending email to $emailId with total amount $total");
  }*/
}

class EmailOrder {
  static const emailId = 'ab@gmail.com';

  static void sendEmail(num total) {
    print("sending email to $emailId with total amount $total");
  }
}
