import 'package:hive/hive.dart';

import '../../data/models/loginModel.dart';

part 'loginEntity.g.dart';

@HiveType(typeId: 0)
class LoginEntity {
  @HiveField(0)
  final  Data? personalDetail;
  final String? message;
  final String? token;

  LoginEntity({
    this.personalDetail,
    this.message,
    this.token,
  });
}
