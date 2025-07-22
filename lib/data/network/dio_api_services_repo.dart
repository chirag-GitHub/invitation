/// Abstract class for defining base API services.
abstract class BaseApiServicesRepo {

  Future<dynamic> getApi(String url, {dynamic data});

  Future<dynamic> postApi(String url, {dynamic data});

  Future<dynamic> deleteApi(String url, {dynamic data});

}
