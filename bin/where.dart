// Ejercicio: Filtrado de elementos de una lista
// El siguiente ejercicio proporciona práctica usando el where()método con la clase Userdel ejercicio anterior.

// Úselo where()para implementar dos funciones:

// Parte 1: Implementar filterOutUnder21().
// Devuelve un correo electrónico Iterableque contiene todos los usuarios de 21 años o más.
// Parte 2: Implementar findShortNamed().
// Devuelve un correo electrónico Iterableque contiene todos los usuarios con nombres de longitud 3 o menos.

// Filtra los elementos de un Iterablecon where().
// La salida de where()es otro Iterable.
// Use takeWhile()y skipWhile()para obtener elementos hasta que se cumpla una condición o después.
// La salida de estos métodos puede ser un archivo Iterable.

Iterable<User> filterOutUnder21(Iterable<User> users) {
  return users.where((user) => user.age >= 21);
}

Iterable<User> findShortNamed(Iterable<User> users) {
  return users.where((user) => user.name.length <= 3);
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}

void returnUserEvaluationWhere() {
  
// Crear algunos usuarios
  User user1 = User('Juan', 15);
  User user2 = User('Ana', 25);
  User user3 = User('Pedro', 12);

// Crear una lista de usuarios
  List<User> users = [user1, user2, user3];

// Ejecutar las funciones
  Iterable<User> filterOutUnder21Email =
      filterOutUnder21(users).toList(); // true
  Iterable<User> findShortNamedEmail = findShortNamed(users).toList(); // false

  for (var user in filterOutUnder21Email) {
    print('usuario tiene 21 años o más: ${user.name}');
  }
  ;

  for (var user in findShortNamedEmail) {
    print('usuarios tienen nombres de 3 caracteres o menos: ${user.name}');
  }
  ;
  print('');


}
