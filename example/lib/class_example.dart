abstract class Dog {
  String get breed;

  String get color;

  /// avoid_return_types_on_setters
  void set color(String color);

  /// avoid_setters_without_getters
  set owner(String owner);

  void feed(String food);
}

class Husky extends Dog {
  @override
  final String breed = 'Husky';

  /// annotate_overrides
  final String color = 'Black';

  @override
  set color(String color) {
    /// avoid_returning_null_for_void
    return null;
  }

  @override
  set owner(String owner) {}

  @override
  void feed(String whatFood) {
    /// avoid_renaming_method_parameters
  }
}
