import 'package:app/data/data.dart';
import 'package:app/providers/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final DioProvider apiProvider;

  Future<LoginResponse> login(String phone, String password) async {
    final data = {"phone": phone, "password": password};
    final res = await apiProvider.post('/auth/login', data: data);
    return LoginResponse.fromJson(res);
  }

  Future<LoginResponse> register(String password, User user) async {
    final data = {
      "phone": user.phone,
      // "lastName": user.lastName ?? '',
      // "firstName": user.firstName ?? '',
      // "shopName": user.shopName ?? '',
      // "registerNumber": user.registerNumber ?? '',
      // "companyRegisterNumber": user.companyRegisterNumber ?? '',
      // "type": user.type,
      // "carriers": [],
      // "status": user.status,
      // "jobStatus": "resting",
      // "password": password
    };
    print(data);
    final res = await apiProvider.post('/auth/register', data: data);
    return LoginResponse.fromJson(res);
  }

  Future<User> getUser() async {
    try {
      final response =
          await apiProvider.get('/user/me') as Map<String, dynamic>;
      return User.fromJson(response);
    } on Exception {
      rethrow;
    }
  }

  Future<bool> createEvent(Event e) async {
    try {
      final data = {
        "name": e.name,
        "members": e.members,
        "registerMembers": 0,
        "startDate": e.startDate,
        "endDate": e.endDate,
        "exec": e.exec,
        "execEvent": e.execEvent,
        "sale": e.sale,
        "volunteer": "645bbf8b6ee7be1b6c412741"
      };

      await apiProvider.post('/event', data: data);
      return true;
    } on Exception {
      return false;
    }
  }

  Future<List<Event>> getEvent() async {
    try {
      final response = await apiProvider.get('/event');

      return (response as List).map((e) => Event.fromJson(e)).toList();
    } on Exception {
      rethrow;
    }
  }

  Future<bool> registerEvent(String id) async {
    final response = apiProvider.get('/event/member/$id').toString();

    return response.toLowerCase() == 'true';
  }
}
