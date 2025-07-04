import 'dart:ffi';

void main() {
  final String pokemon = 'Ditto';
  final int poder = 100;
  final bool isAlive = true;
  final List<String> abilities = ['Watter'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // dynamic == null

  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3];
  errorMessage = {1,2,3,4};

  print("""
    $pokemon,
    $poder,
    $isAlive,
    $abilities,
    $sprites,
    $errorMessage
  """);
}
