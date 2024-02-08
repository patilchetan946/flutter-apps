class Test {
  void fun() {
    print("Test class");
  }

  static void gun() {
    print("in static test");
  }
}

class Test2 extends Test {
  @override
  int fun() {
    super.fun();
    return 10;
  }

  @override
  void gun() {
    print("in test2 gun");
    super.gun();
  }
}

void main() {
  Test2 obj = Test2();
  obj.fun();
}
