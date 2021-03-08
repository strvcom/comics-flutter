import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'random_state.dart';

class RandomCubit extends Cubit<RandomState> {
  RandomCubit() : super(RandomState());
}
