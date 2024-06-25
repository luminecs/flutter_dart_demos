abstract class Animal {
  void makeSound();
}

mixin CanFly {
  void fly() => print('Flying');
}

class Bird extends Animal with CanFly {
  @override
  void makeSound() {
    print('Chirp');
  }
}

void main() {
  Bird bird = Bird();
  bird.makeSound();
  bird.fly();
}