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
class text extends View{
  String content;
  text(int id , this.content,{Color? color}): super(id, color:color);
}
void main() {
  /*
    1) Create class named Text that extends/inherits View class,
        and has a String content property.
        Here is the Text constuctor:
        Text(int id, this.content, {Color? color}) : super(id, color: color)
    2) Create new Text object with the following:
      var helloText = Text(<random id>, content: 'Hello' )
  */

  int textid= Random().nextInt(10000);
text hellotext =text(textid ,'hello');
  var helloText;
  print('hello: ${helloText}');
int id = Random().nextInt(10000);
  print('hello:${hellotext}');

}

void task2() {
  import "dart:math";
List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
int i=0;
List evenNumbers=[];

for(i in numbers);{
  if(i%2==0);{ 
    evenNumbers.add(i);
  print(evenNumbers);
    }
  }
print('evenNumbers : ${evenNumbers}');
}

