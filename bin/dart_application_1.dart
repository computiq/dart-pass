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
  //this will output [hello: "number"]  number will be different after every run because it's random number
  task2();
   /*
  this will call the task2()
 
  */
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
   /*
   And this will print the even numbers from the list numbers like this
   evenNumbers: [3358, 2752, 524, 2528, 736, 4464, 3546, 8026, 2732, 5556, 5042, 746, 1728, 7732, 7952, 2166, 4750, 420, 136, 3280, 6756, 6538, 3618, 6884, 9830, 1796, 618, 7304, 1566, 8920, 9736]
  */
}
