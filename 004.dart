// lists, sets, and maps

void main(){
    List<int> numbers = [12, 12, 43, 56, 88];
    print("List: $numbers");
    numbers.add(344);
    print("add(344): $numbers");
    numbers.remove(12);
    print("remove(12): $numbers");
    numbers.removeLast();
    print("removeLast: $numbers");
    numbers.shuffle();
    print("shuffle: $numbers");

    Set<String> names = {"elvis", "trevor", "amunyo", "emma"};
    print("\nSet: $names");
    names.add("elvis");
    print("add(elvis): $names");
    names.remove("emma");
    print("remove(emma): $names");
    int length = names.length;
    print("length: $length");

    Map<int, String> planets = {
        1: "Mercury",
        2: "Venus",
        3: "Earth",
        4: "Mars",
        5: "Jupiter",
        6: "Saturn",
        7: "Uranus",
        8: "Neptune"
    };

    print("\nMap: $planets");
    planets[9] = "Omicron";
    print("planets[9]: $planets");
    print("containsKey: ${planets.containsKey(99)}");
    print("containsValue: ${planets.containsValue("Omicron")}");
    print("remove(1): ${planets.remove(1)}");
    print("planets: $planets");
    print("values: ${planets.values}\nkeys: ${planets.keys}");
}
