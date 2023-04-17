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
          other is EmailAddress &&
              address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() {
    return 'EmailAddress{address: $address}';
  }
}
