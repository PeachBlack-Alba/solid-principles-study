// BAD PRACTISE
// Interfaces
abstract class Worker {
  void work();

  void sleep();
}

// Methods
class Human implements Worker {
  void work() => print("I work at Delivery Hero");

  void sleep() => print("I sleep at night");
}

class Robot implements Worker {
  void work() => print("I work at Delivery Hero");

  void sleep() {} // No need for this method
}

// GOOD PRACTISE
// Interfaces

abstract class Worker {
  void work();
}

abstract class Sleeper {
  void sleep();
}

// Methods
class Human implements Worker, Sleeper {
  void work() => print("I work at Delivery Hero");

  void sleep() => print("I sleep at night");
}

class Robot implements Worker {
  void work() => print("I work for humans");
}
