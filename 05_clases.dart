void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');
  // final Hero wolverine = Hero('Logan', 'Regeneracion');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

// El constructor lleva el mismo nombre de la clase
class Hero {
  String name;
  String power;

  // inicializar parametros nombrados
  Hero({required this.name, this.power = 'Sin poder'});

  // Dos maneras para inicializar variables
  // Hero(this.name, this.power);
  // Hero(String pName, String pPower) : name = pName, power = pPower;

  @override
  String toString() {
    return '$name - $power';
  }
}
