void main(){
  // print(greetEveryone());
  print(greetingEveryone());
  print('Suma ${addTwoNumbers(10, 20)}');
  print('Suma ${addTwoNumbersOptional(10)}');
  print(greetPerson(name: 'Miguel', message: 'Buenos dias, '));
}

String greetEveryone(){
  return 'Hello everyone';
}

String greetingEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [ int b = 0 ]){
  return a + b;
}

// Params

String greetPerson({required String name, String message = 'Hola'}){
  return '$message $name';
}