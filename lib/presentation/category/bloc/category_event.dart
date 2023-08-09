part of 'category_bloc.dart';

@immutable
abstract class CategoryEvent {}

class IncrementEvent extends CategoryEvent {
  final int number;

  IncrementEvent({required this.number});

  @override
  List<Object?> get props {
    return [number];
  }
}

class DecrementEvent extends CategoryEvent {
  final int number;

  DecrementEvent({required this.number});

  @override
  List<Object?> get props {
    return [number];
  }
}

class IncrementMustard extends CategoryEvent {
  final int numberMustard;

  IncrementMustard({required this.numberMustard});

  @override
  List<Object?> get props {
    return [numberMustard];
  }
}

class DecrementMustard extends CategoryEvent {
  final int numberMustard;

  DecrementMustard({required this.numberMustard});

  @override
  List<Object?> get props {
    return [numberMustard];
  }
}

class IncrementBeef extends CategoryEvent {
  final int numberBeef;

  IncrementBeef({required this.numberBeef});

  @override
  List<Object?> get props {
    return [numberBeef];
  }
}

class DecrementBeef extends CategoryEvent {
  final int numberBeef;

  DecrementBeef({required this.numberBeef});

  @override
  List<Object?> get props {
    return [numberBeef];
  }
}


class IncrementMushroom extends CategoryEvent {
  final int numberMushroom;

  IncrementMushroom({required this.numberMushroom});

  @override
  List<Object?> get props {
    return [numberMushroom];
  }
}

class DecrementMushroom extends CategoryEvent {
  final int numberMushroom;

  DecrementMushroom({required this.numberMushroom});

  @override
  List<Object?> get props {
    return [numberMushroom];
  }
}

class IncrementOnion extends CategoryEvent {
  final int numberOnion;

  IncrementOnion({required this.numberOnion});

  @override
  List<Object?> get props {
    return [numberOnion];
  }
}

class DecrementOnion extends CategoryEvent {
  final int numberOnion;

  DecrementOnion({required this.numberOnion});

  @override
  List<Object?> get props {
    return [numberOnion];
  }
}