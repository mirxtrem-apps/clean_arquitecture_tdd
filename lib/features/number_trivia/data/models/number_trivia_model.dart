import '../../domain/entities/number_trivia.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_trivia_model.g.dart';

@JsonSerializable()
class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({
    required String text,
    required num number,
  }) : super(number: number.toInt(), text: text);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaModelFromJson(json);

  Map<String, dynamic> toJson() => _$NumberTriviaModelToJson(this);
}
