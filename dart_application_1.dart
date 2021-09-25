import 'dart:math';

class Color {
  Color(this.value);
  final int value;
}

void main() {
  var helloText;
  /*ؤم
    1) Create class named `Text` that extends/inherits `View` class,
        and has a `String content` property.
        Here is the Text constuctor:
        Text(int id, this.content, {Color? color}) : super(id, color: color)
    2) Create new `Text` object with the following:
      var helloText = Text(<random id>, content: 'Hello' )
  */

  int id = Random().nextInt(10000);
  helloText = Text(id, content: 'Hello');
  print('hello: $helloText');
  task2();
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  List<int> evenNumbers = [];
  for (final n in numbers) {
    if (n.isEven) {
      evenNumbers.add(n);
    }
  }

  print('evenNumbers: $evenNumbers');
}

class Text extends View {
  Text(int id, {String? content}) : super(id);
}

class View {
  int id;
  Color? color;
  View(this.id, {this.color});

  @override
  String toString() {
    return '$id' ;
  }
}
