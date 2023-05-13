import 'package:equatable/equatable.dart';

class Genre extends Equatable {
  final String name;

  const Genre(this.name);

  @override
  List<Object?> get props => [name];
}
