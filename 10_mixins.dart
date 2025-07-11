abstract class Animal {

}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

// Se declara como mixin la clase de la cual se utiliza el with
mixin Volador {
  void volar() => print('Puede volar');
}

mixin Caminante {
  void caminar() => print('Puede caminar');
}

mixin Nadador {
  void nadar() => print('Puede nadar');
}


class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador{}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main(){
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.volar();
  namor.caminar();
  namor.nadar();
}