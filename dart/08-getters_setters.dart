void main() {
  final mySquare = Square(side: 13);

  //mySquare.side = -5;

  print(mySquare.area);
}

class Square {
  double _side;

  Square({required double side})
      : assert(side > 0, 'Side must be great that 0'),
        assert(side != 12, 'Side must be different that 12'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be > 0';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
