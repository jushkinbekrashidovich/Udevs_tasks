class Person{

  final String last_name;
  final String name;
  final String middle_name;
  final int birth_date;
  final String gender;

  Person(this.last_name, this.name, this.middle_name, this.birth_date, this.gender); 
 
}

class Employee extends Person{
  final String position;
  final int salary;
   String section;

  Employee(String last_name, String name, String middle_name, int birth_date, String gender, this.position, this.salary, this.section) : super(last_name, name, middle_name, birth_date, gender);
   
   void getJob(){
     print('Welcome to our company');
   }
   void leaveJob(){
     print('Goodbye');
   }
  
}


class Section extends Employee{
  Section(String last_name, String name, String middle_name, int birth_date, String gender, String position, int salary, String section) : super(last_name, name, middle_name, birth_date, gender, position, salary, section);


  get section => section;
  setAge(String? value) => section = value!;

  void addSection(section){

     setAge('New section added');
  }
  
  void deleteSection(){
    setAge('Section deleted');

  }


}

void main(){
   Employee employee = Employee('Bekniyozov', 'Jushkinbek', 'Rashidovich', 2002, 'Male', 'Student', 0, 'IT');
   Section section = Section('Bekniyozov', 'Jushkinbek', 'Rashidovich', 2002, 'Male', 'Student', 0, 'IT');
   section.addSection(section);
   print(section.section);
   employee.section;

}