class Animal {}
class Dog extends Animal {}

void main() {
  List<Dog> dogs = [];
  List<Animal> animals = dogs; // Covariant
}