part of 'app_start_cubit.dart';

enum AppStartStatus { initial, loading, success, failure }

class AppStartState extends Equatable {
  final AppStartStatus status;

  const AppStartState({this.status = AppStartStatus.initial});

  AppStartState copyWith({AppStartStatus? status}) {
    return AppStartState(status: status ?? this.status);
  }

  @override
  List<Object?> get props => [status];
}
