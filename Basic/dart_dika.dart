void main() {
  dartVariable();
  dartNumberVariable();
  dartString();
  dartDynamic();
  dartOperasiAritmatika();
  dartTypeTestOperator();
  dartList();
  dartSet();
  dartMap();
  dartNull();
  darTernaryOP();
  dartForIn();
}

void dartVariable() {
  // Dart Variables
  // TIpeData namaVariabel
  print("Normal variable");
  String fullName = "Masdika Ilhan Mansiz";
  print(fullName);

  print("\nVar keyword");
  varKeyword();

  print("\nFinal Keyword");
  finalKeyword();

  print("\nConst Keyword");
  constKeyword();

  print("\nLate Keyword");
  lateKeyword();
}

void varKeyword() {
  // Membuat variabel langsung dengan nilainya menggunakan kata kunci var
  // var namaVariabel = value
  var umur = 19;
  var nama = "Dika";

  print("var nama = " + nama + "\nvar umur = " + umur.toString());
}

void finalKeyword() {
  // variable yang tidak bisa di ubah valuenya
  // final namaVariable = value;
  var bapak = "Joko";
  final ibu = "Surti";
  print("Bapak = " + bapak);
  print("Ibu = " + ibu);

  // Mengisi ulang value dari variable
  bapak = "Tejo";
  // ibu = "Mamah";
  print("Bapak = " + bapak);
  print("Ibu = " + ibu);
}

void constKeyword() {
  // FInal membuat variabel tidak dapat di deklarasikan ulang tapi bisa di ubah nilainya
  // const membuat variable menjadi immuttable / tak dapat di ubah sama sekali
  final array1 = [1, 2, 3];
  const array2 = [1, 2, 3];

  array1[1] = 10; // Value dari array bisa di ubah
  //array2[1] = 10; // error kode -> UnmodifiableListMixin.[]=test\dart_dika.dart

  print(array1[1]);
}

void lateKeyword() {
  // late digunakan untuk menunda deklarasi hingga variable di akses
  // Jika variable tidak di akses maka tidak akan di jalankan
  // tanpa late
  var value = getValue();
  print("Variable sudah dibuat");
  print(value);

  // dengan late
  late var value1 = getValue();
  print("Variable sudah dibuat");
  print(value1);
}

//String Func
String getValue() {
  print("getValue() dipanggil");
  return "Masdika";
}

void dartNumberVariable() {
  // Dalam dart terdapat 2 tipe data number -> int dan double
  print("\nNum keyword");
  numKeyword();
}

void numKeyword() {
  // num digunakan untuk membuat variabel number bertipe int dan double
  // num namaVariable = value
  int a = 10;
  double b = 10.5;

  num c = a;
  num d = b;

  print("num int = " + c.toString());
  print("num double = " + d.toString());
}

void dartString() {
  // Membuat String
  String firstName = 'Masdika';
  String lastName = "Ilhan";
  print(firstName);
  print(lastName);

  print("\nString Interpolatin");
  stringInterpolation();
  print("\nBackSlash Character");
  backslashChar();
}

void stringInterpolation() {
  // String mendukung expression dimana kita bisa mengambil variable lain dalam string
  // ${isiExpression}
  // $isiExpression
  String firstName = 'Masdika';
  String lastName = "Ilhan";
  String fullname = "String Interpolation : $firstName ${lastName}";
  print(fullname);
}

void backslashChar() {
  print('Karakter bintang *\nkarakter kutip1 : \' \nkarakter dollar : \$');
}

void dartDynamic() {
  print("\nDynamic Variables");
  //Variable yang bisa menampung semua jenis data
  dynamic all = 100;
  print(all);
  all = "Bapakmu";
  print(all);
  all = 20.7;
  print(all);
}

void dartOperasiAritmatika() {
  // + ,- ,* ,/ ,~/ ,%
  print("\nOperasi artimatika dart");
  var result1 = 10 / 3;
  var result2 = 10 ~/ 3;
  var result3 = 10 % 3;
  print("$result1 \n$result2 \n$result3");
}

void dartTypeTestOperator() {
  print("\nDart Type Test Operator");
  print("as is is!");
  // as -> melakukan konversi secara paksa
  dynamic variable = 100;
  var intVar = variable as int;
  //var stringVar = variable as String;
  print("intVar = $intVar -> ${intVar.runtimeType}");

  // is -> true jika object sesuai tipe data
  var isInt = variable is int;
  print(isInt);
  isInt = intVar is int;
  print(isInt);
  // is! -> true jika object tak sesuai tipe data
}

void dartList() {
  print("\Dart List");
  // Berisikan kumpulan data / array
  // Menggunakan []
  // Di Dart semua tipe data adalah object, jadi list sendirimemiliki properti, method dan operator
  List<int> intList = [1, 2, 3];
  var numList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  final finalNumList = <int>[1, 2, 3, 4, 5, 6, 7, 8];

  print(intList);
  print(numList.length);
  addDataList();
}

void addDataList() {
  print("\nMenambahkan data ke dalam list");
  var intList = <int>[10, 11, 12, 13];
  print(intList);
  intList.add(14);
  print(intList);

  print("\nRemove data list");
  intList.removeAt(1);
  print(intList);
}

void dartSet() {
  print("n\Dart Set");
  // Set sama dengan list
  // Set tidak bisa memiliki data duplikat
  // pada set tidak ada indeks
  Set<String> nama = {"Masdika", "Ilhan", "Mansiz"};
  print(nama);
  var hewan = <String>{"Kucing", "Burung", "Kuda", "Sapi"};
  print(hewan);

  nama.add("Ilhan");
  print(nama);

  nama.remove("Mansiz");
  print(nama);

  nama.remove("Muhammad");
  print(nama);
}

void dartMap() {
  print("\nDart map");
  // Map sama dengan list
  // map merupakan tipe data key value
  // key = indeks, value = datanya
  // Map<TipeKey, TipeValue> namaVariable = {};
  // var namaVariable = Map<TipeKey, TipeValue> ();
  // var namaVariable = <TipeKey, TipeValue>{};

  Map<String, String> name = {
    "first": "Masdika",
    "midle": "Ilhan",
    "last": "Mansiz"
  };
  var produck = Map<String, String>();
  var address = <String, String>{};

  print(name);
  print(name["first"]);
}

void dartNull() {
  print("\nNull keyword");
  int? nullInt;
  String? nullString = null;
  print(nullInt);
  print(nullString);
  defaultValueNull();
}

void darTernaryOP() {
  print("\nTernary Dart");
  int nilai = 90;
  var grade = nilai > 75 ? 'Anda Lulus' : 'Anda Bodoh';
  print(grade);
}

void defaultValueNull() {
  print("\nDefault Value Null");
  String? tamu;
  //tamu = "Dika";
  var namaTamu = tamu ?? 'Irfan';
  print(namaTamu);
}

void dartForIn() {
  print("\nFor In Dart Loop");
  var nameList = <String>["Dika", "Juan", "Wildan"];

  for (var value in nameList) {
    print(value);
  }
}
