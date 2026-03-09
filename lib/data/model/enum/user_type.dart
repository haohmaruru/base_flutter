enum UserType {
  ra(1),
  raManager(2),
  com(3),
  comManager(4),
  ca(5),
  caManager(6),
  job(7);

  final int value;

  const UserType(this.value);

  static UserType fromValue(int val) {
    for (UserType type in values) {
      if (type.value == val) {
        return type;
      }
    }
    return UserType.job;
  }

  @override
  String toString() {
    return 'UserType(name: $name, value: $value)';
  }
}
