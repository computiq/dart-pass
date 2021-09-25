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
class Text extends View{
  String? content;
  
          Text(int id, this.content, {Color? color}) : super(id, color: color);
/* if we want to print the content and id 
 * we can add this  and remove the toString method in the View class
 @override
  String toString() {
    return '$content and $id';
  }  */
}
void main() {

  int id = Random().nextInt(10000);
var helloText = Text(id,'Hello');
  print('hello: $helloText');
  
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
 List<int> evenNumbers=[];

  /*
  Looping through the `numbers` list.
  If the number even it will be add to the evenNumbers list 
  */
  for (final i in numbers) {
    if (i.isEven) {
      evenNumbers.add(i);
    
  }}
  print('evenNumbers: $evenNumbers');
}
