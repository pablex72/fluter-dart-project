class UserModel {
  final int id;
  final String email;
  final String firstname;
  final String lastname;
  final String avatar;
  UserModel(
    {
      required this.id,
      required this.email,
      required this.firstname,
      required this.lastname,
      required this.avatar
    }
  );
  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      id: json['id'],
      email: json['email'],
      firstname: json['first_name'] ?? 'First Name',
      lastname: json['id'] ?? 'Last Name',
      avatar: json['id'] ?? 'https://img.freepik.com/free-vector/illustration-user-avatar-icon'
    );
  }
}