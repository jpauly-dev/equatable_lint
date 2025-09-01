import 'package:equatable/equatable.dart';

class NoLintOnStaticVariableMixinExample with EquatableMixin {
  const NoLintOnStaticVariableMixinExample();

  static const testStatic = false;

  @override
  List<Object?> get props => [];
}
