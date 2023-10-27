abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('Estoy volando!');
}

abstract class Caminante {
  void caminar() => print('Estoy Caminando!');
}

abstract class Nadador {
  void nadar() => print('Estoy Nadando!');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Nadador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final ducker = Pato();
  ducker.nadar();
}
