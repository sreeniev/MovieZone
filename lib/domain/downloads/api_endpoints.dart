import 'package:movie_zone/core/strings.dart';
import 'package:movie_zone/infrastructure/api_key.dart';

class ApiEndpoints {
  static const downloads = '$kBaseUrl/trending/all/day?api_key=$apiKey';
}
