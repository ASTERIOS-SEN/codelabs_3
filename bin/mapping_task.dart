Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  return strings.map((string) => EmailAddress(string));
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  return emails.any((email) => email.address.contains('@') == false);
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  return emails.where((email) => email.address.contains('@'));
}

class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress && address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() {
    return 'EmailAddress{address: $address}';
  }
}

void returnUserEvaluationAny() {
  // Crear algunos usuarios
  EmailAddress email1 = EmailAddress('dsevila');
  EmailAddress email2 = EmailAddress('dsevila@ni.thedataage.com');
  EmailAddress email3 = EmailAddress('dsevilla@gmail.com');

  // Crear una lista de usuarios
  List<EmailAddress> emails = [email1, email2, email3];

  // Crear una lista de emails en formato String
  Iterable<String> strings = [
    'dsevilla@gmail.com',
    'dsevila@ni.thedataage.com'
  ];

  // Ejecutar las funciones de validación de email
  bool anyInvalidEmailAddressEmail = anyInvalidEmailAddress(emails); // true
  Iterable<EmailAddress> validEmailAddressesEmail =
      validEmailAddresses(emails).toList(); // false
  Iterable<EmailAddress> emailAddresses = parseEmailAddresses(strings);

  print('¿Hay algún email inválido? $anyInvalidEmailAddressEmail');

  for (var email in validEmailAddressesEmail) {
    print('emails válidos: ${email.address}');
  }

  for (var email in emailAddresses) {
    print('emails en formato String: ${email.address}');
  }
}
