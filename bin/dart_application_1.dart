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

void main() {
  
 // ----- class Text extends View class: -----
class Text extends View {
  String content;
  Text(int id, this.content, {Color? color}) : super(id, color: color);
}
  
  // ----- Create new Text object:  -----
  int textId = Random().nextInt(10000);
  Text helloText = Text(
    textId,
    'hello',
  );
  
  int id = Random().nextInt(10000);

  print('hello: $helloText');
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));

  /*
    Separate even numbers from the above `numbers` list.
    List<int> evenNumbers = ...
  */
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
