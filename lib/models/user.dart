// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
   final String id;
   final String name;
   final String email;
   final String location;
   final String password;
  final String token;
   User({
    required this.id,
    required this.name,
    required this.email,
    required this.location,
    required this.password,
    required this.token,
   });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'location': location,
      'password': password,
      'token': token,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      location: map['location'] as String,
      password: map['password'] as String,
      token: map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
