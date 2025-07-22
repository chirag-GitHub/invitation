import 'package:quotanic/features/profile/repository/profile_api_repository.dart';

import '../../../data/network/dio_api_services_impl.dart';

class ProfileRepositoryImpl implements ProfileApiRepository {
  final DioApiServicesImpl _apiServices = DioApiServicesImpl();

  // @override
  // Future<UserModel> updateProfileApi(dynamic data) async {
  //   Response response =
  //       await _apiServices.postApi(Endpoints.getProfileEndPint, data: data);
  //   return UserModel.fromJson(response.data);
  // }
  //
  // @override
  // Future<UserModel> logoutApi(dynamic data) async {
  //   Response response =
  //       await _apiServices.postApi(Endpoints.logoutEndPint, data: data);
  //   return UserModel.fromJson(response.data);
  // }
  //
  // @override
  // Future<UserModel> removeImageApi() async {
  //   Response response =
  //       await _apiServices.deleteApi(Endpoints.getProfileRemoveEndPint);
  //   return UserModel.fromJson(response.data);
  // }
  //
  // @override
  // Future<UserModel> getProfileApi(dynamic data) async {
  //   Response response =
  //   await _apiServices.getApi(Endpoints.getProfileEndPint, data: data);
  //   return UserModel.fromJson(response.data);
  // }

}
