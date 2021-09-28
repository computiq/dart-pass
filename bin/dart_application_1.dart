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
  var helloText = Text(id, 'Hello');
  print('hello: $helloText');
  //console output {hello: 2353} this number will be change after every eun because it's random number
  
}

void task2() {
  List<int> numbers =
      List<int>.generate(75, (index) => Random().nextInt(10000));
  List<int> evenNumbers = <int>[];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i].isEven) {
      evenNumbers.add(numbers[i]);
    }
    ;
  }
  print('evenNumbers: $evenNumbers');
  //this function will show the output only when call it in main function
  //Console output 
  //evenNumbers: [3358, 2752, 524, 2528, 736, 4464, 3546, 8026, 2732, 5556, 5042, 746, 1728, 7732, 7952, 2166, 4750, 420, 136, 3280, 6756, 6538, 3618, 6884, 9830, 1796, 618, 7304, 1566, 8920, 9736, 7566, 6886, 3024, 9592, 2640, 3384]
}
