abstract class Person {
  String? _name;
  int? _phoneNumber;
  String? _type;
  int? _age;

  get name => _name;
  setName(String? value) => _name = value;

  get phoneNumber => _phoneNumber;
  setphoneNumber(int? value) => _phoneNumber = value;

  get type => _type;
  setType(String? value) => _type = value;

  get age => _age;
  setAge(int? value) => _age = value;
}

class Client extends Person {
  String? _gender;

  get gender => _gender;
  setGender(String? value) => _gender = value;
}

class Courier extends Person {
  bool? _license;
  get license => _license;

  setLicense(bool? value) => _license = value;
}

class Manager extends Person {
  int? _experience;

  get experience => _experience;
  setExperience(int? value) => _experience = value;
}

void main() {
  Client client = Client();
  client.setAge(20);
  client.setName("Jushkinbek");
  client.setphoneNumber(991234567);
  client.setType('Client');
  
  
  print(client.type);
  print(client.name);
  print(client.age);
  print(client.phoneNumber);
  print(client.gender);


  Courier courier = Courier();
  courier.setLicense(true);
  courier.setAge(21);
  courier.setName('Bobir');
  courier.setphoneNumber(999122192);
  courier.setType('Courier');
  
  
  print(courier.type);
  print(courier.name);
  print(courier.age);
  print(courier.license);
  print(courier.phoneNumber);

  Manager manager = Manager();
  manager.setType('Manager');
  manager.setName('Sardor');
  manager.setAge(32);
  manager.setExperience(4);

  print(manager.type);
  print(manager.name);
  print(manager.experience);
  print(manager.age);
  

}