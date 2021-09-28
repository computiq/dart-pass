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
    1) Create class named Text that extends/inherits View class,
        and has a String content property.
        Here is the Text constructor:
        Text(int id, this.content, {Color? color}) : super(id, color: color)
    2) Create new Text object with the following:
      var helloText = Text(<random id>, content: 'Hello' )
  */

  int id = Random().nextInt(10000);
  var helloText = Text(id, "Fahad Hayan");
  print('hello: $helloText'); //The Output will be: hello: 4823
  task2(); //Here we call the function task2
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  List<int> evenNumbers=[];
  /*
    Separate even numbers from the above numbers list.
    List<int> evenNumbers = ...
  */
  for (var i=0;i<numbers.length;i++) {
    if (numbers[i]%2==0) {
      evenNumbers.add(numbers[i]);
    }
  }
  print('evenNumbers: $evenNumbers'); // The Output will be: evenNumbers: [4398, 9538, 4348, 5618, 9276, 2738, 3534, 8176, 624, 6812, 8654, 1398, 8494, 7002, 556, 7654, 6450, 4910, 8928, 8220, 8544, 5956, 5950, 3258, 6218, 7574, 1852, 5522, 24, 8660, 5952, 684, 1700, 4900, 9620, 234, 4656, 1066, 1806]
}
/*
The final result of output in the console will be like that: 

hello: 4823
evenNumbers: [4398, 9538, 4348, 5618, 9276, 2738, 3534, 8176, 624, 6812, 8654, 1398, 8494, 7002, 556, 7654, 6450, 4910, 8928, 8220, 8544, 5956, 5950, 3258, 6218, 7574, 1852, 5522, 24, 8660, 5952, 684, 1700, 4900, 9620, 234, 4656, 1066, 1806]
*/
