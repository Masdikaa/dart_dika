void main() {
    print("Dart OOP Operator");
    //Mirip seperti pemuatan method biasanya

    Orange orange1 = Orange();
    orange1.quantity = 10;

    Orange orange2 = Orange();
    orange2.quantity = 18;

    Orange orange3 = orange1 + orange2;
    print("Orange 3 : ${orange3.quantity}");
}

class Orange {
    int quantity = 0;

    // Membuat operator
    Orange operator +(Orange orange) {
        var result = Orange();
        result.quantity = quantity + orange.quantity;
        return result;
    }
}
