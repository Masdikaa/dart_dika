import 'package:flutter/cupertino.dart';

void main() {
  dartVariable();
  dartNumberVariable();
  dartString();
  dartDynamic();
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
