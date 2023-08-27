void main() {
  final myBrowser = MyBrowser();
  final history = History();
  myBrowser.setAddress('google.com');
  history.push(myBrowser.createState());

  // 2
  myBrowser.setAddress('twitter.com');
  history.push(myBrowser.createState());

  //3
  myBrowser.setAddress('facebook.com');
  myBrowser.restoreState(history.pop());
  myBrowser.restoreState(history.pop());
  myBrowser.goBack();
  myBrowser.checkXOr();
}

//Originator
class MyBrowser {
  String? _address;

  setAddress(String value) => _address = value;

  get address => _address;

  createState() {
    return MyBrowserState(address!);
  }

  restoreState(MyBrowserState state) {
    _address = state.content;
  }

  void checkXOr() {
    List<int> n = [1, 3, 4, 1, 3];

    int ans = 0;

    for (int i = 0; i < n.length; i++) {
      print("ans before is $ans");
      ans = ans ^ n[i];
      print("ans after is $ans");
    }
    print("unique is $ans");
  }

  void goBack() {
    print("Address is $address");
  }
}

//Memento
class MyBrowserState {
  final String? content;

  MyBrowserState(this.content);
}

//CareTaker
class History {
  List<MyBrowserState> history = <MyBrowserState>[];

  void push(MyBrowserState state) {
    history.add(state);
  }

  MyBrowserState pop() {
    return history.removeAt(history.length - 1);
  }
}
