import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/domain/i_counter_repository.dart';
import 'package:injectable_tutorial/injection.dart';

@Injectable(as: ICounterRepository, env: [Env.dev])
class DevCounterRepository implements ICounterRepository {
  @override
  int getIncrement() => 2;
}
