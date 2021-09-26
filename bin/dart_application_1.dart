import 'dart:math';

class Color {
  Color(this.value);
  final int value;
}

class View {
  int id;
  Color? color;

  View(this.id, {this.color});

  @override
  String toString() {
    return '$id';
  }
}

class Text extends View {
  String content;
  Text(int id, {required this.content, Color? color}) : super(id, color: color);
}

void main() {
  /*
    1) Create class named `Text` that extends/inherits `View` class,
        and has a `String content` property.
        Here is the Text constuctor:
        Text(int id, this.content, {Color? color}) : super(id, color: color)
    2) Create new `Text` object with the following:
      var helloText = Text(<random id>, content: 'Hello' )
  */

  int id = Random().nextInt(10000);
  Color colorPink = Color(0xffb74093);
  String text =
      'When the computer asks "Are you a robot?", maybe, he just wants to find his family?';
  var helloText = Text(id, content: text, color: colorPink);
  print('hello: ${helloText.id}\n${helloText.content}');

  task2();
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  /*
    Separate even numbers from the above `numbers` list.
    List<int> evenNumbers = ...
  */
  List<int> evenNumbers = [];

  numbers.forEach((number) {
    if (number.isEven) {
      evenNumbers.add(number);
    }
  });

  print('evenNumbers: $evenNumbers');
}
