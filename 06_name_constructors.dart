void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Money',
    'isAlive': true,
  };

  // final Hero ironman = Hero(name: 'Tony Stark', power: 'Money', isAlive: false);

  // final ironman = Hero(
  //     isAlive: rawJson['isAlive2'] ?? false,
  //     power: 'Money',
  //     name: 'Tony Stark',
  // );

  final ironman = Hero.fromJson(rawJson);
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, this.power = 'sin poder', required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'Yes!' : 'Nope'}';
  }
}
