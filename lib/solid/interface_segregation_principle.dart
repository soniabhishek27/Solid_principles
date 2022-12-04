void main() {}

abstract class Mammal {
  void eat();

  void see();
}

abstract class FlyInterface {
  void fly();
}

class Bird implements Mammal, FlyInterface {
  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void see() {
    // TODO: implement see
  }
}

class Dog implements Mammal {
  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void see() {
    // TODO: implement see
  }
}
