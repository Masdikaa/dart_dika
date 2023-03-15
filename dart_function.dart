void main() {
  print("Function Dart");

  parameterFunc("Masdika", "Ponorogo");
  optionalParameterFunc();
  namedParameterFunc();
  defaultParameterValueFunction();
  requiredParameterFunc();
  returnValueFunc();
  shortExpression();
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
