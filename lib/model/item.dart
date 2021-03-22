class Item {
  int _id;
  String _name;
  String _code;
  int _price;
  int _qty;
  String get code => this._code;

  set code(String value) => this._code = value;

  int get qty => this._qty;

  set qty(int value) => this._qty = value;

  int get id => this._id;

  get name => this._name;

  set name(value) => this._name = value;

  get price => this._price;

  set price(value) => this._price = value;

  Item(this._name, this._price, this._code, this._qty);

  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._code = map['code'];
    this._qty = map['qty'];
    this._price = map['price'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    map['qty'] = qty;
    map['code'] = code;
    return map;
  }
}
