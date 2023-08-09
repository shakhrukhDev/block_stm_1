part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {}

class IncrementEvent extends HomeEvent {
  final int number;

  IncrementEvent({required this.number});

  @override
  List<Object?> get props {
    return [number];
  }
}


class DecrementEvent extends HomeEvent {
  final int number;

  DecrementEvent({required this.number});

  @override
  List<Object?> get props {
    return [number];
  }
}

