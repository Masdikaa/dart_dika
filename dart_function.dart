void main() {
  // Main function adalah function ang digunakan sebagai gerbang masuk ke dalam dart
  // Function ini akan di jalankan pertama kali oleh dart
  // Main funtion memiliki parameter opsional yang namanya arguments yang berupa list String
  // Jalankan arguments di ternminal dengan dart namaFile.dart argumen1 argumen2 ,argument3
  // print("Arguments : $args");

  print("Function Dart\n");

  parameterFunc("Masdika", "Ponorogo");
  optionalParameterFunc();
  namedParameterFunc();
  defaultParameterValueFunction();
  requiredParameterFunc();
  returnValueFunc();
  shortExpression();
  innerFunctionDart();
  higterOrderFunction();
  anonymousFunction();
}

void parameterFunc(String nama, String alamat) {
  print("Hay saya $nama dari $alamat");
}

void optionalParameterFunc() {
  print("\nOptional Parameter Function");
  // Fungsi yang bisa tidak memasukan parameter
  // Optional parameter harus nullable
  sayHello("Masdika");
  sayHello("Masdika", "Ilhan");
}

void sayHello(String firstname, [String? lastname]) {
  print('Hello $firstname $lastname');
}

void namedParameterFunc() {
  print("\nNamed Parameter Functin");
  sayHay();
  sayHay(namaDepan: "Dika");
  sayHay(namaDepan: "Dika", namaBelakang: "Jagoan");
}

void sayHay({String? namaDepan, String? namaBelakang}) {
  print("Hay $namaDepan $namaBelakang");
}

void defaultSayHay({String? namaDepan, String namaBelakang = "Muhammad"}) {
  print("Hay $namaDepan $namaBelakang");
}

void defaultParameterValueFunction() {
  print("\nDefault Parameter Value Function");
  defaultSayHay(namaDepan: "Masdika");
  defaultSayHay(namaDepan: "Juan", namaBelakang: "Kafir");
  defaultSayHay(namaBelakang: "Askandar");
}

void requiredParameterFunc() {
  print("\nRequired Parameter Function");
  requiredSayHay(firstName: "Masdika");
  requiredSayHay(firstName: "Masdika", lastName: "Ahmad");
}

void requiredSayHay(
    {required String firstName, String lastName = "Novachrono"}) {
  print("Hay $firstName $lastName");
}

void returnValueFunc() {
  print("\nReturn Value Func");
  int jumlah = penjumlahan(12, 90);
  print(jumlah);

  List<int> list = [1, 2, 3, 4];
  print("Total penjumlahan dari list = ${sumList(list)}");
}

int sumList(List<int> listData) {
  int jumlah = 0;
  for (var value in listData) {
    jumlah += value;
  }
  return jumlah;
}

int penjumlahan(int a, int b) {
  return (a + b);
}

void shortExpression() {
  print("\nFunction Short Expression");
  // int multiply(int a, int b) => a + b;
  print(multiply(10, 12));
  print(multiply(9, 2));
}

int multiply(int a, int b) => a * b;

void innerFunctionDart() {
  print("\nDart Inner Function");

  void sayHay() {
    print("Hay All");
    print("Ini Inner Function");
  }

  sayHay();
}

void higterOrderFunction() {
  print("\nHigter Order Function");
  /*
  Berguna ketika ingin mendapatkan functin yang lebih general dan ingin input
  yang flexible berupa function yang bisa di deklarasikan penggunaketika
  memanggil function tsb
  */
  print(
      "Adalah function yang menggunakan function sebagai variable, parameter, return value");
  funcAsParameter("Masdika", filterBadWord);
  funcAsParameter("gila", filterBadWord);
}

String filterBadWord(String name) {
  if (name == "gila") {
    name = "****";
  }
  return name;
}

void funcAsParameter(String name, String Function(String) filter) {
  var filteredName = filter(name);
  print("Hi $filteredName");
}

void anonymousFunction() {
  print("\nAnonymous Function ");
  // adalah function yang tidak memiliki nama
  // atau biasa di sebut lamda

  dynamic nama1 = "masdika ilhan mansiz";
  dynamic nama2 = "MASDIKA ILHAN MANSIZ";

  var toUpperCase = (String name) {
    return name.toUpperCase();
  };
  var toLowerCase = (String name) => name.toLowerCase();

  print(toUpperCase(nama1));
  print(toLowerCase(nama2));
}
