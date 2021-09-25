/**
 * * Noaman Monther Mahmood
 * * YANHAD Coding Bootcamp (Tasks - 1)
 * * Dart Side 
 * ! Use Better Comments {for better experiance with this task solution}
 * ! https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments
 */
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
  var helloText = Text(
    id,
    'Hello',
  );
  print('hello: $helloText');
  /*
  ! this would give us the id property because we are inherting from [View] class
  !in overriding view class we are retering the id value as string
  * to get other assigned data we will do the following 
  TODO Printing other class data.
 {   
   ! use . operator

        print('hello: ${helloText.content}');
        print('hello: ${helloText.id}');
        print('hello: ${helloText.color}');
  }

   */

  // * calling task2 method.

  task2();
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  /**
   * ! we need to make a new empty list , check if the number is even, then add it to the newly created list . 
   */
  List<int> evenNumbers = [];
  /*
    Separate even numbers from the above `numbers` list.
    List<int> evenNumbers = ...
  */

  // * getting each number in the list and check it weather is even or not,
  // * we are only interested in even numbers in this examole
  numbers.forEach((listNumber) {
    if (listNumber.isEven) {
      // ! this number is absolutely even number,
      // ! so we gonna add it to the [evenNumbers] list.
      evenNumbers.add(listNumber);
    }
  });

  print('evenNumbers: $evenNumbers');
}
