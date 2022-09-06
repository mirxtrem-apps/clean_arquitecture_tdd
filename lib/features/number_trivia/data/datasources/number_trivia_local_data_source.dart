import '../models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  /// get the cached [NumberTriviaModel] which was gotten the las time.
  /// the usuer had an internet connection
  ///
  /// Throws a [CacheException] if no cached data is present.
  Future<NumberTriviaModel> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}
