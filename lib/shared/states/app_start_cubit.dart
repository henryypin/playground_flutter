import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_start_state.dart';

class AppStartCubit extends Cubit<AppStartState> {
  AppStartCubit() : super(const AppStartState());

  Future<void> initializeApp() async {
    emit(state.copyWith(status: AppStartStatus.success));
  }
}
