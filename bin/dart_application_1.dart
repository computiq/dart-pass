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
 

  int id = Random().nextInt(10000);
  var helloText = Text(id, "hussain alyasiry");
  
 print('Hello: $helloText');
  //the output is Hello: 7303 
  // it changes with every run 
  task2();
  // for printing the evennumbers
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  List evenNumbers = [];

 

  for (final i in numbers) {
    if (i.isEven) {
      evenNumbers.add(i);
    }
  }
  print('evenNumbers: $evenNumbers');
  // the output is evenNumbers: [5846, 7814, 3402, 7126, 880, 5084, 2842, 9076, 2786, 6628, 6, 1666, 7590, 4504, 7796, 9400, 5784, 8048, 7962, 4236, 7318, 6112, 640, 5404, 9790, 9008, 1928, 388, 5942, 4250, 8156, 9284, 3154, 5408]
  // and it changes with every run
}
