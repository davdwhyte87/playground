class App {
  List<Student> students = [];
  List<dynamic> getAllStudents() {
    // get the data from students
    return students;
  }

  void addStudent({name = String, age = int}) {
    // get the number of current items in the list
    var noOfStudents = students.length;
    // create the id
    int newId = noOfStudents + 1;
    // create new map
    Student newItem = Student(name: name, age: age, id: newId);
    students.add(newItem);
  }

  Student getSingleStudent(int id) {
    // students.forEach((element) {
    //   if (element["ID"] == id) {
    //     return element;
    //   }
    // });

    for (var student in students) {
      if (student.id == id) {
        return student;
      }
    }
    return Student();
  }
}

class Student {
  String? name;
  int? age;
  int? id;

  Student({this.name, this.age, this.id});
}
