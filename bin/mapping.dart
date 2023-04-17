// Ejercicio: asignación a un tipo diferente
// En el ejemplo anterior, multiplicó los elementos de an Iterablepor 2.
// Tanto la entrada como la salida de esa operación fueron an Iterablede int.

// En este ejercicio, su código toma un Iterablede User y debe devolver un Iterable
// que contenga cadenas que contengan el nombre y la edad de cada usuario.

// Cada cadena en el Iterabledebe seguir este formato: '{name} is {age}'—por ejemplo 'Alice is 21'.

// - map()aplica una función a todos los elementos de un Iterable.
// - La salida de map()es otro Iterable.
// - La función no se evalúa hasta que se Iterableitera.

Iterable<String> getNameAndAges(Iterable<User> users) {
  return users.map((user) => '${user.name} is ${user.age}');
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}

void returnUserMap() {
  // Crear algunos usuarios
  User user1 = User('Juan', 15);
  User user2 = User('Ana', 25);
  User user3 = User('Pedro', 12);

// Crear una lista de usuarios
  List<User> users = [user1, user2, user3];

  print(getNameAndAges(users).toList());
}
