// Membuat Class di dalam Dart
class Person {
  // membuat Field dari class
  var name = "Guest";
  String? address;
  final String country = "Indonesia";

  // membuat method
  void sayHello(String name) {
    print("Hello, $name my name is ${this.name}");
  }

  void sayHay(String paramName) {
    print("Hay $paramName, My name is $name");
  }
}

void main() {
  print("Class");

  // Membuat object dari class person

  var person = Person();
  print(person);

  Person person2 = Person();
  print("$person2");
  // Instance of 'Person'

  var person3 = new Person();
  // Unnecessary "new" Keyword
  // Tidak perlu lagi menggunakan new
  print(person3);

  dartField();
}

void dartField() {
  print("\nDart Field");
  // Field / Atribut / Property adalah data yang bisa kita sisipkan di dalam object
  // Sama dengan variable namun di tempatkan di block class
  // wajib dimasukan nilainya kecuali yang nullable

  // Membuat Object
  Person person1 = Person();

  // Mengambil data dari field
  print(person1.name);
  print(person1.address);
  print(person1.country);

  // Memanipulasi data field
  person1.name = "Masdika Ilhan Mansiz";
  person1.address = "Poonorogo";
  print(person1.name);
  print(person1.address);

  person1.sayHello("Eko");
}
