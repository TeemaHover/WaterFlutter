import 'package:app/data/data.dart';
import 'package:app/providers/dio_provider.dart';

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
      print(response);
      return User.fromJson(response);
    } on Exception {
      rethrow;
    }
  }

  Future<Product> getProductByBarcode(int barcode) async {
    try {
      final response = await apiProvider.get('/product/barcode/$barcode')
          as Map<String, dynamic>;
      print(response);
      return Product.fromJson(response);
    } on Exception {
      rethrow;
    }
  }

  Future<List<Product>> getProduct(String route) async {
    try {
      final response = await apiProvider.get(route);

      return (response as List).map((e) => Product.fromJson(e)).toList();
    } on Exception {
      rethrow;
    }
  }
}
