

class Student {

   String? _name;
  int? _age;
  Student(this._name, this._age);


}

class Library extends Student{
  
  String? genres;

  Library(String? name, int? age, String? genres) : super(name, age);
  

  List<Object> get props {
    return  [genres!];
  }

}

void main(){
 
 Library library = Library('Jushkinbek', 20, 'hsh, jajaj');
 print(library.props);
  
  
}