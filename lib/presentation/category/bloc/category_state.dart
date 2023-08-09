part of 'category_bloc.dart';

class CategoryState extends Equatable {
  final int number;
  final int numberMustard;
  final int numberBeef;
  final int numberMushroom;
  final int numberOnion;

  const CategoryState({
    this.number = 0,
    this.numberMustard = 0,
    this.numberBeef = 0,
    this.numberMushroom = 0,
    this.numberOnion = 0,
  });

  CategoryState copyWith({
    int? number,
    int? numberMustard,
    int? numberBeef,
    int? numberMushroom,
    int? numberOnion,
  }) =>
      CategoryState(
        number: number ?? this.number,
        numberMustard: numberMustard ?? this.numberMustard,
        numberBeef: numberBeef ?? this.numberBeef,
        numberMushroom: numberMushroom ?? this.numberMushroom,
        numberOnion: numberOnion ?? this.numberOnion,
      );

  @override
  List<Object?> get props => [number, numberMustard, numberBeef, numberMushroom,numberOnion];
}
