void main() {
  final windPlant = WindPlant(initialEnergy: 50);
  final nuclearPlant = NuclearPlant(energyLeft: 50);

  print(windPlant);
  print('The initial Energy of the plant is ${windPlant.energyLeft}');
  print('The plant consum 22 points of energie now!');
  windPlant.consumeEnergy(22);
  print('The new energye of the plant is ${windPlant.energyLeft}');
  print('Wind ${chargePhone(windPlant)}');
  print('Nuclear ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// extends o implements
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
