mixin Calculator {
  int _calculate() => 1 + 1;
}

mixin A {
  String getMessage() => 'A';
}

mixin B {
  String getMessage() => 'B';
}

abstract class P with Calculator {
  String getMessage() => 'P';
}

class ASD implements P {
  @override
  int _calculate() {
    // TODO: implement calculate
    throw UnimplementedError();
  }

  @override
  String getMessage() {
    // TODO: implement getMessage
    throw UnimplementedError();
  }

}

class AB extends P with A, B {}

class BA extends P with B, A {}

void main() {
  String result = '';

  AB ab = AB();
  print(ab.getMessage());
  result += ab.getMessage();

  BA ba = BA();
  result += ba.getMessage();
  print(ba.getMessage());

  print(result);

}

class Musician {
  // ...
}
mixin MusicalPerformer on Musician {
  // ...
}
class SingerDancer extends Musician with MusicalPerformer {
  // ...
}