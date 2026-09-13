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
}
