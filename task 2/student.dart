
class Student {

  String _name;
  String _course;
  String _faculty;
  int _age;

  Student( this._name, this._course, this._faculty, this._age, );

  String get getName{
    return _name;
  }
  void set setName(String name){
    this._name = name;
  }
  String get getCourse{
    return _course;
  }

  void set setCourse(String course){
    this._course = course;
  }

 String get getFaculty{
    return _faculty;
  }
  void set setFaculty(String faculty){
    this._faculty = faculty;
  } 
  int get getAge{
    return _age;
  }
  void set setAge(int age){
    this._age =age;
  }
}

void main(){
  Student std = new Student('Jushkinbek', 'Application Programming', 'SOCIE', 20);
  print("Student name is ${std._name}");
  print("Course name is ${std._course}");
  print("Faculty name is ${std._faculty}");
  print("Age is ${std._age}");

}
