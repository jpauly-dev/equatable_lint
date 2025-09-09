import 'package:equatable/equatable.dart';

class NoLintOnGetterMixinExample with EquatableMixin {
  const NoLintOnGetterMixinExample();

  bool get testGetter => false;

  @override
  List<Object?> get props => [];
}
