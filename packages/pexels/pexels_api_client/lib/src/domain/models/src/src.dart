import 'package:freezed_annotation/freezed_annotation.dart';

part 'src.freezed.dart';
part 'src.g.dart';

@freezed
class Src with _$Src {
  const factory Src({
    required String original,
    required String large2x,
    required String large,
    required String medium,
    required String small,
    required String portrait,
    required String landscape,
    required String tiny,
  }) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}
