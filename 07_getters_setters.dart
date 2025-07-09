void main(){

  final mySquare = Square(side: 4.5);

  mySquare.sideValue = -5;

  print('Area: ${mySquare.calculateArea()}');

}

class Square {
  double _side; //side * side

  Square({required double side})
    : _side = side;

  double get area {
    return _side * _side;
  }

  set sideValue(double value) {
    print('setting new value $value');
    if(value < 0) throw 'Value must be > 0';
    _side = value;
  }

  double calculateArea(){
    return _side * _side;
  }
}