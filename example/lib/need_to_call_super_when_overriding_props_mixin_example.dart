import 'package:equatable/equatable.dart';

class BaseEquatableClassWithMixin with EquatableMixin {
  const BaseEquatableClassWithMixin({this.field});

  final String? field;

  @override
  List<Object?> get props => [field];
}

class NeedToCallSuperWhenOverridingPropsMixinExample
    extends BaseEquatableClassWithMixin {
  const NeedToCallSuperWhenOverridingPropsMixinExample({this.newField});

  final String? newField;

  // A lint will appear here because props doesn't call super.props
  // So it doesn't count fields defined in NewFieldNotInPropsExample class
  @override
  List<Object?> get props => [newField];
}
