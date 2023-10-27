void main() {
  print(greetEveryOne());
  print(add(10, 20));
  print(add(10, 0));
  print(greetPerson(name: "Manu", message: "Como estas?"));
}

String greetEveryOne() {
  return "Hello Everyone!";
}

// String greetEveryOne() => "Hello Everyone!";

//int add(int a, int b) {
//  return a + b;
//}

int add(int a, int b) => a + b;

int addOptional(int a, [int b = 5]) {
  return a + b;
}

String greetPerson({required String? name, String message = "Holaaa"}) {
  return "$message, $name";
}
