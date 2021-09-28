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
  String? content;
  Text(int id, {this.content, Color? color}) : super(id, color: color);

// if you want to print content and color even if its null:
/*  
  @override
  String toString() {
    return '$id $content $color';
  }
*/
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
  var helloText = Text(id, content: "Hello");
  print('hello: $helloText');
  /* the output will be the following (the id number will be random):
  hello : 5384
  */
  task2();
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  List evenNumbers = [];
  
   for (int i in numbers)
  {
    if (i %2 == 0)
    evenNumbers.add(i);
  }
  print('evenNumbers: $evenNumbers');
  
  /* the output will be the following:
  evenNumbers: [List of even numbers]
  */
}
