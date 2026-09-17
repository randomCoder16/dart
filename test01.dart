// testing oop concempts

void main() {

    // without contructors
    // var pizza = MenuItem();
    // pizza.name = "Meat Pizza";
    // pizza.price = 22.99;

    // print("Instance without constructor: ${pizza.name} -> ${pizza.price}");

    // with default contructors
    // var pizza = MenuItem("Vegiterian Pizza", 21.99);
    // print("Item: ${pizza.name} -> ${pizza.price}");
    
    // parameterised contructors
    var noodles = MenuItem("Tonkotsu", 45.99);
    //dont need to call pizza.format() since sting method has been overriden
    print(noodles);

    // inheritence
    var pizza = Pizza("Chicken Pizza", 19.99, ["Cheese", "Mushrooms"]);
    print(pizza.format());
}

class MenuItem {
    String? name;
    double? price;

    // default constructor
    MenuItem(this.name, this.price);

    String format(){
        return "${this.name} -> \$${this.price}";
    }

    // instead of seeing instance of menuItem --> use the instacne name directly
    @override
    String toString(){
        return format();
    }
}

// basic inheritence
class Pizza extends MenuItem {
    List<String> toppings;

    Pizza(super.name, super.price, this.toppings);

    //method overriding
    @override
    String format(){
        String formattedToppings = "Contains -> ";
        for(final topping in toppings) {
            formattedToppings = "$formattedToppings $topping";
        }
        return "${super.name} : \$${super.price}\n${formattedToppings}";
    }
}
