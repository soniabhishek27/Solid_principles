// Dependency inversion
// Entities must depend on abstraction not on concretions. It states that the high level module
// must not depend on the low level module, but they should depend on abstractions

// Main purpose of this principle is to do decoupling

void main() {
  final service = Service();
  // now no need to change anything in service class
  // just do the below thing

  // service.connection = MyDbConnection();
  service.connection = FirebaseConnection();
  service.attach();
}

abstract class ConnectionInterface {
  void connect();
}

class Service {
  ConnectionInterface? connection;

  void attach() {
    connection!.connect();
  }
}

class MyDbConnection implements ConnectionInterface {
  @override
  void connect() {}
}

class FirebaseConnection implements ConnectionInterface {
  @override
  void connect() {
    // TODO: implement connect
  }
}
