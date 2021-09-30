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
  Text(int id, this.content, {Color? color}) : super(id, color: color);
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

  Text helloText = Text(id, "hello");
  print('hello: $helloText');
  //console output :- (hello: 9360) the number is random
  task2();
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));

  List evenNumbers = [];

  for (final i in numbers) {
    if (i.isEven) {
      evenNumbers.add(i);
    }
  }

  print('evenNumbers: $evenNumbers');
  //console output is:- evenNumbers: [4718, 3264, 7800, 4652, 5508, 1942, 2350, 1608, 654, 816, 16,
  //9066, 9294, 1794, 9950, 7608, 7528, 2294, 600, 1398, 3498, 7852, 5110, 2592,
  //202, 8916, 1866, 2338, 6956, 3702, 8670, 4036, 2632, 3100, 796, 3138, 6994, 5774, 8838, 2884, 1398, 9368]
}
