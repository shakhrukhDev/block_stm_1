import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryState()) {
    on<IncrementEvent>(_increment);
    on<DecrementEvent>(_decrement);
    on<IncrementMustard>(_incrementMustard);
    on<DecrementMustard>(_decrementMustard);
    on<IncrementBeef>(_incrementBeef);
    on<DecrementBeef>(_decrementBeef);
    on<IncrementMushroom>(_incrementMushroom);
    on<DecrementMushroom>(_decrementMushroom);
    on<IncrementOnion>(_incrementOnion);
    on<DecrementOnion>(_decrementOnion);
  }

  void _increment(IncrementEvent event, Emitter<CategoryState> emit) {
    emit(state.copyWith(number: event.number + 1));
  }

  void _decrement(DecrementEvent event, Emitter<CategoryState> emit) {
    emit(state.copyWith(number: event.number - 1));

    int secondNum = state.number - 1;

    secondNum < 0 ? secondNum = 0 : state.number;

    emit(state.copyWith(
      number: secondNum,
    ));
  }

  void _incrementMustard(IncrementMustard event, Emitter<CategoryState> emit) {
    emit(state.copyWith(numberMustard: event.numberMustard + 1));
  }

  void _decrementMustard(DecrementMustard event, Emitter<CategoryState> emit) {
    emit(state.copyWith(numberMustard: event.numberMustard - 1));

    int secondNum = state.numberMustard - 1;

    secondNum < 0 ? secondNum = 0 : state.numberMustard;

    emit(state.copyWith(
      numberMustard: secondNum,
    ));
  }

  void _incrementBeef(IncrementBeef event, Emitter<CategoryState> emit) {
    emit(state.copyWith(numberBeef: event.numberBeef + 1));
  }

  void _decrementBeef(DecrementBeef event, Emitter<CategoryState> emit) {
    emit(state.copyWith(numberBeef: event.numberBeef - 1));
    int secondNum = state.numberBeef - 1;
    secondNum < 0 ? secondNum = 0 : state.numberBeef;
    emit(state.copyWith(
      numberBeef: secondNum,
    ));
  }

  void _incrementMushroom(
      IncrementMushroom event, Emitter<CategoryState> emit) {
    emit(state.copyWith(numberMushroom: event.numberMushroom + 1));
  }

  void _decrementMushroom(
      DecrementMushroom event, Emitter<CategoryState> emit) {
    emit(state.copyWith(numberMushroom: event.numberMushroom - 1));
    int secondNum = state.numberMushroom - 1;
    secondNum < 0 ? secondNum = 0 : state.numberMushroom;
    emit(state.copyWith(
      numberMushroom: secondNum,
    ));
  }

  void _incrementOnion(IncrementOnion event, Emitter<CategoryState> emit) {
    emit(state.copyWith(numberOnion: event.numberOnion + 1));
  }

  void _decrementOnion(DecrementOnion event, Emitter<CategoryState> emit) {
    emit(state.copyWith(numberOnion: event.numberOnion - 1));
    int secondNum = state.numberOnion - 1;
    secondNum < 0 ? secondNum = 0 : state.numberOnion;
    emit(state.copyWith(
      numberOnion: secondNum,
    ));
  }
}
