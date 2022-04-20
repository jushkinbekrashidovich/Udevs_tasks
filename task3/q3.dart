class Abonent{
  int? _ID;
  String? _last_name;
  String? _middle_name;
  String? _name;
  String? _address;
  int? _card_num;
  int? _debit_card;
  int? _credit;
  int? _inCityTime;
  int? _outCitytime;

  Abonent(this._ID, this._last_name, this._middle_name, this._name, this._address, this._card_num, this._debit_card, this._credit, this._inCityTime, this._outCitytime);

  get ID => _ID;
  setID(int? value) => _ID = value; 

  get last_name => _last_name;
  setLastName(String? value) => _last_name = value; 

  get middle_name => _middle_name;
  setMiddleName(String? value) => _middle_name = value;

  get name => _name;
  setName(String? value) => _name = value;

   get adress => _address;
  setAdress(String? value) => _address = value;

  get card_num => _card_num;
  setCardNum(int? value) => _card_num = value; 

  get debit_card => _debit_card;
  setDebitCard(int? value) => _debit_card = value; 

  get credit => _credit;
  setCredit(int? value) => _credit = value;

  get incityTime => _inCityTime;
  setInCityTime(int? value) => _inCityTime = value;

  get outCitytime => _outCitytime;
  setOutCityTime(int? value) => _outCitytime = value;

  


}

void main(){
  
}