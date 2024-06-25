void execute(Function fn) => fn();

void main() {
  execute(() => print('Hello from higher-order function'));
}