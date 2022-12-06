import 'package:flutter_bloc/flutter_bloc.dart';

import 'task_state.dart';

class TaskCubit extends Cubit<TaskStates> {
  TaskCubit() : super(TaskInitialState());
  // to be simple when use it many places
  static TaskCubit get(context) => BlocProvider.of(context);

  bool isA = false;
  bool isB = false;
  bool isC = false;
  bool isD = false;
  void buttonA() {
    isA = true;
    isB = false;
    isC = false;
    isD = false;
    emit(AState());
  }

  void buttonB() {
    isB = true;
    isA = false;
    isC = false;
    isD = false;
    emit(BState());
  }

  void buttonC() {
    isC = true;
    isB = false;
    isA = false;
    isD = false;
    emit(CState());
  }

  void buttonD() {
    isD = true;
    isB = false;
    isC = false;
    isA = false;
    emit(DState());
  }
}
