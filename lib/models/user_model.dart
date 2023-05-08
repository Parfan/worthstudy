class User {
  final int id;
  final String username;
  final int age;

  User({required this.id, required this.username, required this.age});

  Map<String, dynamic> toMap() {
    return {'id': id, 'username': username, 'age': age};
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      age: map['age'],
    );
  }
}
