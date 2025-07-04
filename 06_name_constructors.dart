void main() {

  final rawJson = {
    'name': 'To'
  };

  final Hero ironman = Hero(name: 'Tony Stark', power: 'Money', isAlive: false);
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, this.power = 'sin poder', required this.isAlive});

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'Yes!' : 'Nope'}';
  }
}
