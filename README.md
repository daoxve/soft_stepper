## About

Soft-stepper provides with extra customization features which Flutter's default stepper does not currently provide.

## General Guidelines

Simply import package:soft_stepper/soft_stepper.dart.

__Important:__ The direction argument controls whether the stepper is displayed horizontally or vertically. A horizontal IconStepper can be wrapped within a Column with no issues. However, if wrapped within a row, it must also be wrapped within the built-in Expanded widget. The same applies to the vertical IconStepper.

__Validation:__ To enable validation before the next step is reached, set the steppingEnabled property to an appropriate value in a StatefulWidget.

__Controlling Steppers:__ All steppers are controlled using the activeStep property. You can control a stepper by:-

using the built-in next and previous buttons.

## Credits

Forked from the [im_stepper](https://pub.dev/packages/im_stepper) package.
