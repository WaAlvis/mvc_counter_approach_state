//Esa informacion q necesitamos almacenar
// https://codingornot.com/mvc-modelo-vista-controlador-que-es-y-para-que-sirve

class ModelCounter {
  int _counter = 0;

  int get counter => _counter;

  void setCounter(int value) {
    print('Incrementado en uno');
    _counter = value;
  }

  @override
  String toString() {
    return _counter.toString();
  }
}
