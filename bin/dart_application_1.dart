import 'dart:math';

class Color {
  Color(this.value);
  final int value;
}

class View {
  int id;
  Color color;

  View(this.id, {this.color});

  @override
  String toString() {
    return '$id';
  }
}

class Text extends View
{

  Text(int id, this.content, {Color color}) : super(id, color: color);

  String content;

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
  

  int id2 = Random().nextInt(10000);
  var helloText = Text( id2,  'Hello' );

  print('hello: $helloText');

	task2();
}

void task2() {
  List<int> numbers = List.generate(10, (index) => Random().nextInt(10000));
  print('evenNumbers: $numbers');
  /*
    Separate even numbers from the above `numbers` list.
    List<int> evenNumbers = ...
  */
    List<int> evenNumbers = [];

	 for(var i=0; i<numbers.length; i+=2)
		 {
    evenNumbers.add(numbers.elementAt(i));
		 }
     
     print('evenNumbers: $evenNumbers');

}
