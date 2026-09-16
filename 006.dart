
// method overloading


void main(){
    var noodles = MenuItem("Noodles", 2.99);
    var pizza = MenuItem("Pizza", 5.99);
    var pizza2 = Pizza("Chiken Pizza", 22.99, ["Mushrooms", "Water"]);

    print("Item 1: ${noodles.format()}");
    print("Item 2: ${pizza.format()}");
    print("Item 3: ${pizza2.format()}");
}

// basic classses
class MenuItem{
    String title;
    double price;

    MenuItem(this.title, this.price);

    String format(){
        return "$title: \$$price";
    }
}

// basic inheritence
class Pizza extends MenuItem{
    List<String> toppings;

    Pizza(super.title, super.price, this.toppings);

    String format(){
        String formatedToppings = "Contains-> ";

        for (final t in toppings) {
            formatedToppings = "$formatedToppings $t";
        }

        return "${title}: \$${price}: ${formatedToppings}";
    }
}
