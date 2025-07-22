
import '../../../data/network/dio_api_services_impl.dart';
import 'home_api_repository.dart';

/// Implementation of [HomeApiRepository] for making HTTP requests to the authentication API.
class HomeApiRepositoryImpl implements HomeApiRepository {
  final DioApiServicesImpl _apiServices = DioApiServicesImpl();

  // @override
  // Future<WidgetModel> getWidgetApi() async {
  //   Response response =
  //       await _apiServices.getApi(Endpoints.getHomeWidgetEndPint);
  //   return WidgetModel.fromJson(response.data);
  // }
  //
  // @override
  // Future<PropertyModel> getPropertyApi(data) async {
  //   Response response =
  //       await _apiServices.getApi(Endpoints.getPropertiesEndPint + data);
  //   return PropertyModel.fromJson(response.data);
  // }
  //
  // @override
  // Future<AreaModel> getTenantApi(data) async {
  //   Response response =
  //       await _apiServices.getApi(Endpoints.getAreaEndPint + data);
  //   return AreaModel.fromJson(response.data);
  // }
  //
  // @override
  // Future<UserModel> getProfileApi() async {
  //   Response response = await _apiServices.getApi(Endpoints.getProfileEndPint);
  //   return UserModel.fromJson(response.data);
  // }
  //
  // @override
  // Future<void> setPropertyArea(data) async {
  //   await _apiServices.postApi(Endpoints.setHomePropertyArea, data: data);
  // }
}
