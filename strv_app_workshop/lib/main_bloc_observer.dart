import 'package:bloc/bloc.dart';
import 'package:fimber/fimber.dart';

class MainBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    Fimber.i("onEvent $event");
  }

  @override
  onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Fimber.i("onTransition $transition");
  }
}
