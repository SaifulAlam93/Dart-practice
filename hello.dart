import 'dart:collection';
import 'dart:io';

void main() {
//variable
//String
  String nameS = "Saiful";

  //Integer

  var x = 1;
  var y = 5;

  print(x + y);
  print((x + y).toString() + nameS);
  print("($x + $y) $nameS");

  int age = 10;
  double location = 21.424567;
  bool gender = true;
  String name = "Saiful";
  dynamic fullName = "Saiful Alam";

  print(age);
  print(location);
  print(gender);
  print(name);
  print(fullName);

  print("age $age");
  print("location $location");
  print("gender $gender");
  print("name $name}");
  print("Full Name: $fullName");

  print("age " + age.toString());
  print("location " + location.toString());
  print("gender " + gender.toString());
  print("name " + name);
  print("Full Name:" + fullName);

  //List
//Fixed Length List
//Here, the size of the list is declared initially and can’t be changed during runtime.

  List? gfg = List.filled(5, null, growable: false);
  gfg[0] = 'gg';
  gfg[1] = 'For';
  gfg[2] = 'ggg';

  // Printing all the values in List
  print(gfg);

  // Printing value at specific position
  print(gfg[2]);
//Growable List

  var gl = ['gg', 'For'];

  // Printing all the values in List
  print(gl);

  // Adding new value in List and printing it
  gl.add('ggg'); // list_name.add(value);
  print(gl);

  // list_name.addAll([val 1, val 2, ...]);
  gl.addAll(['For', 'ggg3']);
  print(gl);
  // list_name.insert(index, value);
  gl.insert(1, 'For');
  print(gl);

  // list_name.insertAll(index, list_of_values);
  gl.insertAll(1, ['For', 'Geeks']);
  print(gl);

  gl[0] = "5";
  print(gl);

  //Remove
  gl.remove("5");

  //remove using index num
  gl.removeAt(1);

//MAPss

  HashMap hashMap = new HashMap<int, String>();
  LinkedHashMap linkedHashMap = new LinkedHashMap<int, String>();
  SplayTreeMap treeMap = new SplayTreeMap<int, String>();

  Map map = Map<int, String>();
  if (map is LinkedHashMap) {
    print("This is a LinkedHashMap.");
  }

  Map<String, int> map1 = {'zero': 0, 'one': 1, 'two': 2};
  print(map1);

// not specify key-value type
  Map map2 = {'zero': 0, 'I': 'one', 10: 'X'};
  print(map2);

  var map3 = {'zero': 0, 'I': 'one', 10: 'X'};
  print(map3);

  Map<String, int> map4 = {'zero': 0, 'one': 1, 'two': 2};

  Map map5 = Map.from(map4);
  print(map5);

  Map map6 = Map.of(map4);
  print(map6);

  List<String> letters = ['I', 'V', 'X'];
  List<int> numbers = [1, 5, 10];

  Map<String, int> map0 = Map.fromIterables(letters, numbers);
  print(map0);

// My Map---------------------------

  var toppings = {"Saiful": "Travelling", "Alam": "Movies"};
  print(toppings);
  print(toppings["Saiful"]);
  print(toppings.values);
  print(toppings.keys);
  print(toppings.length);

//add
  toppings["tt"] = "Football";
  toppings.addAll({"Saiful40": "Eating", "Alam40": "cooking"});
  print(toppings);
//Remove
  toppings.remove("tt");
  print(toppings);

  toppings.clear();
  print(toppings);

  //For loop
  var num = 5;
  for (var i = num; i >= 1; i--) {
    print(i);
  }

  var arr = ["jon", "irra", "tom", "Jery"];
  for (var name in arr) {
    print(name);
  }

  while (num > 1) {
    print(num);
    num--;
  }

//Logic

  var num2 = 5;
  if (num2 == 5) {
    print(num2);
  } else if (num2 == 3) {
    print("object");
  } else {
    print("object");
  }

//Functions
  myFunction() {
    print("My Function");
  }

  myFunction();

//Functions with peramiters
  myFunctionWithReturn(String name) {
    return "My Function " + name;
  }

  print(myFunctionWithReturn("Abdullar"));

//Functions with Optional peramiters
  myFunction1(String name, [name2]) {
    return "My Function " + name + "  $name2";
  }

  print(myFunction1("Abdullar"));

  //Functions with  named peramiters
  myFunction2(String name, {name2}) {
    return "My Function " + name + " " + name2;
  }

  print(myFunction2("Abdullar", name2: "sssss"));

//user input
// First import laibrary dart:io
  // print("Enter your name..");

  // var myName = stdin.readLineSync();
  // print(myName);

  // String? name2 = stdin.readLineSync();
  // print(name2);

  //String to int conversion
  var a, b, c, d;
  a = 10;
  b = "5";
  c = "0.56";

  d = a + int.parse(b) + double.parse(c);

  print("$a+$b+$c=$d");

  //String to int conversion

  // var hh;
  // var ll = (hh ?? 0) + 5;
  // print(ll);

//fizbujj

  var fizBujj = 1;

  while (fizBujj <= 100) {
    // print(fizBujj);

    if (fizBujj % 3 == 0 && fizBujj % 5 != 0) {
      print("$fizBujj fizz ");
      // continue;
    } else if (fizBujj % 5 == 0 && fizBujj % 3 != 0) {
      print("$fizBujj Buzz");
      // continue;
    } else if (fizBujj % 3 == 0 && fizBujj % 5 == 0) {
      print("$fizBujj fizzBuzz");
      // continue;
    }
    fizBujj++;
  }

//class
  Person p = new Person("Saiful", "Male", 30);
  Person p2 = Person("Saiful", "Male", 30);

  print(p.name);

  p.name = " Alam";
  print(p.name);
}

class Person {
  String? name, gender;
  int? age;

  Person(String name, gender, int age) {
    this.name = name;
    this.gender = gender;
    this.age = age;
  }
}
