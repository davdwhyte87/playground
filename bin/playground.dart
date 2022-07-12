import 'package:playground/playground.dart' as playground;
import 'package:playground/app.dart' as app;

void main(List<String> arguments) {
  print('Hello xworld: ${playground.calculate()}!');
  // print something
  // playground.printMap();

  var xapp = app.App();

  // add a student
  xapp.addStudent(name: "Alex jones", age: 23);
  xapp.addStudent(name: "Yommi harry", age: 44);
  // get students
  List<dynamic> students = xapp.getAllStudents();
  students.forEach(print);

  app.Student student = xapp.getSingleStudent(2);
  print(student.name);
}
