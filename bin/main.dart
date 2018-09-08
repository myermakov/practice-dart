//import 'package:meta/meta.dart';

enum BodyParts {head, tail} // im a python, go away

main () {
  printInt(42, 'fourtytwo', ["o",'m', 'g'], true);
  func('eh', 'meh');

  xFlags();
  xFlags(a: 121);
  xFlags(b: 144);
  xFlags(a: 123, b: 345);

print('${myStr()} is ${count(myStr)}');
print('${myStr2()} is ${count(myStr2)}');
print(countList([1, null, 2, null, 3, null]));

Function ff = f1('frabba');
Function frabbajabba = () => ff('jabba');
print(frabbajabba());
print(frabbajabba());
print(frabbajabba());
print(frabbajabba());
print(frabbajabba());

String obj; 
String foo() => obj ?? 'something';
print(foo());

  // TODO cascade notation 

int myNil = obj?.length;
print(myNil);



List<NPC> npcs = [
  NPC(name: 'misha', level: 0),
  NPC(name: 'kolya', level: -1),
  NPC(name: 'eunice', level: 90),
];

npcs
  .where((npc) => npc.level > 1)
  .forEach((npc) {
    npc.greet();
    });



// TODO: classes
print(npcs.runtimeType);

// order of construction of classes:
// initializer list
// superclasses noarg constructor
// main classes noarg constructor
//

StoryLineNPC lobster = StoryLineNPC(
  name: 'Lobstah',
  level: 500,
  mortal: false,
  quests: [
  'kill bill',
  'save private ryan',
]);


print(lobster.quests);
lobster.greet();
lobster.die();
print(lobster.tasks);

print(BodyParts.head);
print(BodyParts.tail.index);
print(BodyParts.values);

}

class NPC {
  String name;
  int level;

  NPC({String this.name, int this.level}); 

  void greet() {
    print('hello from $name');
  }
}

// line noise...
class StoryLineNPC extends NPC {
  List<String> quests;
  final bool mortal;
  StoryLineNPC({String name, int level, bool mortal, List<String> quests}) 
  : this.mortal = mortal,
   super(name: name, level: level) {
    this.quests = quests;
  }

  List<String> get tasks => quests.map((quest) => 
       "You have to $quest!"
    ).toList(); // why do I have to List??
    // toList or not toList?

  void die() {
    if (!mortal) {
      print('$name cannot die');
    } else {
      print('$name died');
    }
  }
}




Function f1 (String a) {
  String c = '';
  String f2 (String b) {
    c += b;
    return a+c; 
  }
  return f2;
}








printInt(int a, String b, List<String> c, bool d) {
  print("a $a"); 
  print("b $b"); 
  print("c $c"); 
  print("d $d"); 

  for (String x in c) {
    print('$x my ass');
  }

  int bla;
  assert(bla == null);

}


void func(String word, String shmord) {
  List<String> bar = const ['val'];

  try {
  bar.add('another val');
  print(bar);
  } catch (e) {
  print(e);
  }

  var one = int.parse('1');
  assert('1' ==  one.toString());

  
 Map<String,String> treasures = {
    'key': 'value',
    'another_key': 'some_other_value',
  };

  print(treasures);
  print(treasures['key']);
  // as of Dart2, new keyword is optional

  assert(treasures.length == 2);

  treasures['island'] = null;
  assert(treasures.length == 3);

  var clapping = '\u{1f44f}';
  print(clapping);

  var x = #symbol; // like free-roaming enum value
  print(x);
}

//one does not simply import meta dart
//void xFlags({int a, int b, @required int c}) {
void xFlags({int a, int b, int c = 42}) {
  if (a != null) {
    print(a);
  }

  if (b != null) {
    print(b);
  }
  print('c better be $c');
   
}


int count(Function stringProvider) {
  return stringProvider().length;
}

String myStr() {
  return "what";
}

// must be 'expression'
String myStr2() =>  "lol" + "what";


int countList(List x) {
  int i = 0;
  x.forEach((item) {
    if (item != null) {
      i+=1;
    }
  });
  return i;
}




