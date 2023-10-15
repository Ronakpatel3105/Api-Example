import 'package:api_example/models/user%20model/user_model.dart';

class DataUserModel {
  int limit;
  int skip;
  int total;
  List<UserModel> users;

  DataUserModel({
    required this.limit,
    required this.skip,
    required this.total,
    required this.users,
  });

  factory DataUserModel.fromJson(Map<String, dynamic> json) {
    List<UserModel> mUser = [];

    for (Map<String, dynamic> eachUser in json['users']) {
      mUser.add(UserModel.fromJson(eachUser));
    }

    return DataUserModel(
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],
      users: mUser,
    );
  }
}
