import 'package:injectable_tutorial/domain/i_counter_repository.dart';
import 'package:injectable_tutorial/injection.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() async {
    await configureDependencies(Env.test);
  });

  test(
    "should do something", 
    () async {
      // arrange
      final mockCounterRepository = locator<ICounterRepository>();
      when(mockCounterRepository.getIncrement()).thenReturn(123);
      // act
      // TODO: Some action here
      // assert
      verify(mockCounterRepository.getIncrement()).called(10);
    },
  );
}
