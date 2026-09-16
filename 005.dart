// classses


void main(){
    var noodles = MenuItem("Noodles", 2.99);
    var pizza = MenuItem("Pizza", 5.99);
    var pizza2 = Pizza("Chiken Pizza", 22.99, ["Mushrooms", "Water"]);

    print("Item 1: ${noodles.title}: ${noodles.price}");
    print("Item 2: ${pizza.title}: ${pizza.price}");
    print("Item 3: ${pizza2.title}: ${pizza2.price}: ${pizza2.toppings[0]}");
}

// basic classses
class MenuItem{
    String title;
    double price;

    MenuItem(this.title, this.price);
}

// basic inheritence
class Pizza extends MenuItem{
    List<String> toppings;

    Pizza(super.title, super.price, this.toppings);
}
