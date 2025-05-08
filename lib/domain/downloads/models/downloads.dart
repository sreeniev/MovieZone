import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: 'poster_path') required String? posterPath,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);

  @override
  // TODO: implement posterPath
  String? get posterPath => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
