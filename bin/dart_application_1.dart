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

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  List<int> evennumbers = [];
  for (int i in numbers){
    if (i.isEven){
      evennumbers.add(i);
      
    }
  }
  print("original list $numbers");
  print("Even number List $evennumbers");

  /*
    Separate even numbers from the above `numbers` list.
    List<int> evenNumbers = ...
  */
  //print('evenNumbers: $evenNumbers');
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
  var helloText = Text(id , "Hello");
  print('hello: $helloText');
  task2();
}

