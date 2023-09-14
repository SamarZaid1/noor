



import '../../routes/api.dart';

extension RouteExtension on String {
  // h is get Host url
  String get host {
    String schema = RouteApi.isScure ? "https:/" : "http:/";
    List url = [schema, RouteApi.HOST, RouteApi.API_VERISON];
    return url.join('/');
  }

  //path is get real path

  String get path {
    return this;
  }

  //get host + path
  String get url {
    String schema = RouteApi.isScure ? "https:/" : "http:/";
    List url = [schema, RouteApi.HOST, RouteApi.API_VERISON];
    return url.join('/') + this;
  }
}
