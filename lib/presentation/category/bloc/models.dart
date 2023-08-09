
import 'package:equatable/equatable.dart';

class MyTask extends Equatable{
  final String description;
  final bool isDone;

  MyTask({required this.description,required this.isDone});

  MyTask copyWith({
    bool? isDone,
  }) {
    return MyTask(
      description: description,
      isDone: isDone ?? this.isDone,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [description, isDone];
}