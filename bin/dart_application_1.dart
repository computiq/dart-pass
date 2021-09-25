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
    return "$id";
  }
} 
class Text extends View {
  String content;
  Text(int id, this.content, {Color? color}) : super(id, color: color);
}

void main() {
  int id = Random().nextInt(10000);
  var helloText = Text(id,'Hello');
  print('hello: $helloText');
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  List<int> evenNumbers = [];
  for (var i in numbers) {
  if (i.isEven){
    evenNumbers.add(i);
  }}
  print('evenNumbers: $evenNumbers');
}
