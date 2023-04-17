// Ejercicio: Verificar que un Iterable cumple una condición
// El siguiente ejercicio proporciona práctica en el uso de los métodos any()y every()descritos en el ejemplo anterior. En este caso, trabaja con un grupo de usuarios, representado por Userobjetos que tienen el campo miembro age.

// Use any()y every()para implementar dos funciones:

// Parte 1: Implementar anyUserUnder18().
// Regrese true si al menos un usuario tiene 17 años o menos.
// Parte 2: Implementar everyUserOver13().
// Regrese true si todos los usuarios tienen 14 años o más.
// La Iterableclase proporciona dos métodos que puede usar para verificar las condiciones:

// any(): Devuelve verdadero si al menos un elemento cumple la condición.
// every(): Devuelve verdadero si todos los elementos cumplen la condición.



bool anyUserUnder18(Iterable<User> users) {
  return users.any((user) => user.age <= 17);
}

bool everyUserOver13(Iterable<User> users) {
  return users.every((user) => user.age >= 14);
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}

void returnUserEvaluation() {
  // Crear algunos usuarios
  User user1 = User('Juan', 15);
  User user2 = User('Ana', 25);
  User user3 = User('Pedro', 12);

// Crear una lista de usuarios
  List<User> users = [user1, user2, user3];

// Ejecutar las funciones
  bool anyUnder18 = anyUserUnder18(users); // true
  bool everyOver13 = everyUserOver13(users); // false

  print('usuario tiene 17 años o menos: $anyUnder18');
  print('usuarios tienen 14 años o más: $everyOver13');
}
