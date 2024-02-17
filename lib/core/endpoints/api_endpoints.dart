import 'package:injectable/injectable.dart';

@injectable
class ApiEndpoints {
  /// auth endpoint
  static const String baseUrl = "https://jsonplaceholder.org";
  static const String postsUrl = "/posts/1";

  static postDetailsUrl({required int postId}) =>
      "/posts/$postId";
}
