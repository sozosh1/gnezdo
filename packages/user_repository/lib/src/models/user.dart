import 'package:equatable/equatable.dart';
import '../entities/entities.dart';

class MyUser extends Equatable {
  final String userId;
  final String email;
  final String name;
  final String surname;
  final String phone;

  const MyUser(
      {required this.surname,
      required this.phone,
      required this.userId,
      required this.email,
      required this.name});

  static const empty =
      MyUser(userId: '', email: '', name: '', surname: '', phone: '');

  MyUser copyWith(
      {String? userId,
      String? email,
      String? name,
      String? surname,
      String? phone}) {
    return MyUser(
        userId: userId ?? this.userId,
        email: email ?? this.email,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        phone: phone ?? this.phone);
  }

  MyUserEntity toEntity() {
    return MyUserEntity(userId: userId, email: email, name: name,surname:surname,phone:phone);
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
        userId: entity.userId, email: entity.email, name: entity.name, surname:entity.surname , phone: entity.phone);
  }

  @override
  List<Object?> get props => [userId, email, name,surname,phone];
}
