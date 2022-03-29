import 'package:flutter_test/flutter_test.dart';

import 'package:soft_stepper/soft_stepper.dart';

void main() {
  group('Null/Exception checks', () {
    const calculator = SoftStepper();
    test('non-negative steps during first init', () {
      expect(calculator.activeStep, isNonNegative, reason: 'Must be a valid integer');
    });
    test('stepper is non-null during any runtime phase', () {
      expect(
        calculator,
        isNotNull,
        reason: 'Assert non-null at runtime or when state is changed',
      );
    });
  });
}
