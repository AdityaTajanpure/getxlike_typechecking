class Test<T> {
  
  static Map<String, dynamic> store = {
    'Test<String>': Test<String>(),
    'int': 20,
    'String': 'Got this'
  };
  
  static T? getValue<T>({String? tag}) {
    String type = _getKey(T, tag);
    print('Checking store for $type');
    return store[type];
  }
  
  static String _getKey(Type type, String? name) {
    return name == null ? type.toString() : type.toString() + name;
  }
}


void main() {
  Test<String>? t = Test.getValue();
  int? a = Test.getValue();
  String? s = Test.getValue();
  print(t);
  print(a);
  print(s);
}
