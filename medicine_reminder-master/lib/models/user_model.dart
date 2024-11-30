// user data which will get stored in the dataabase
class UserModel {
  String name;
  String email;
  String createdAt;
  String uid;

  UserModel({
    required this.name,
    required this.email,
    required this.uid,
    required this.createdAt,
  });
  // from map- which means getting the data from the server
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      uid: map['uid'] ?? '',
      createdAt: map['createdAt'] ?? '',
    );
  }
  // to map - sending the data to our server
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "uid": uid,
      "createdAt": createdAt,
    };
  }
}
