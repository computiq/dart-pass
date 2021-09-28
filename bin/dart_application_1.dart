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
  String content;
  Text(int id, this.content,{Color? color}):super(id,color: color);
}

void main() {


  int id = Random().nextInt(10000);


  Text helloText = Text(id,'Hello');
  print('hello: $helloText');
  task2();
}

void task2() {
  List<int> numbers = List.generate (75, (index) => Random().nextInt(10000));

  List evenNumbers=[];
  for(final i in numbers){
    if (i.isEven){
      evenNumbers.add(i);
    }
  }

  print('evenNumbers: $evenNumbers');
}


// the outputs
//hello: 6916
//evenNumbers: [6342, 7222, 8470, 4018, 9540, 1742, 4472, 8654, 5008, 1376, 1210, 9752, 8550, 6006, 5674, 6224, 8680, 3442, 1588, 4494, 3604, 4036, 4162, 7458, 9768, 204, 3334, 9726, 7984, 9354, 9276, 2442, 6668]
