//#open and close principle - Objects or entities should be open for extension, but closed for
// modification

import 'package:solid_example/solid/single_responsibility_principle.dart';

void main() {
  CustomerInfo customerInfo = CustomerInfo(balance: 10);
  customerInfo.totalAmount = 10;
  customerInfo.taxPercentage = 5;
  customerInfo.shipping = 3;
  num orderValue = customerInfo.calculateOrder();
  EmailOrder.sendEmail(orderValue);
  customerInfo.checkCustomerBalance();
}

// suppose we have to add a new feature to check user balance of the customer
// who is placing a order so instead of modifying OrderCalculator create a new class
// customer info and extend oderCalculator in it
// NOTE if we add new field in orderCalculator then we are breaking a rule
class CustomerInfo extends OrderCalculator {
  CustomerInfo({this.balance});

  num? balance;

  void checkCustomerBalance() {
    print("your current balacnce is $balance");
  }
}
