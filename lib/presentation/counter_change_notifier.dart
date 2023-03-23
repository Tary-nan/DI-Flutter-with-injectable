import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/domain/i_counter_repository.dart';

@injectable
class CounterCubit extends Cubit<int> { 
  final ICounterRepository _counterRepository;

  CounterCubit(this._counterRepository) : super(0);

  void increment() => emit(state + _counterRepository.getIncrement());
  void decrement() => emit(state - 1);
}
