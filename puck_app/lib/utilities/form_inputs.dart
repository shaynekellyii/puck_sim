import 'package:formz/formz.dart';

/// Form input which only accepts alpha and space chars.
class AlphaInput extends FormzInput<String, ValidationError> {
  const AlphaInput.pure() : super.pure('');

  const AlphaInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _alphaRegExp = RegExp(r'^[a-zA-Z ]*$');

  @override
  ValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return const EmptyValidationError();
    }
    return _alphaRegExp.hasMatch(value.trim())
        ? null
        : const InvalidAlphaValidationError();
  }
}

/// Form input which accepts a 3-letter team abbreviation (e.g. VAN).
class AbbreviationInput extends FormzInput<String, ValidationError> {
  const AbbreviationInput.pure() : super.pure('');

  const AbbreviationInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _abbreviationRegExp = RegExp(r'^[a-zA-Z]{3}$');

  @override
  ValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return const EmptyValidationError();
    }
    return _abbreviationRegExp.hasMatch(value.trim())
        ? null
        : const InvalidAbbreviationValidationError();
  }
}

sealed class ValidationError {
  const ValidationError();

  String message();
}

final class EmptyValidationError extends ValidationError {
  const EmptyValidationError();

  @override
  String message() => 'Field cannot be empty';
}

final class InvalidAlphaValidationError extends ValidationError {
  const InvalidAlphaValidationError();

  @override
  String message() =>
      'This field can only contain alphabetical characters and spaces';
}

final class InvalidAbbreviationValidationError extends ValidationError {
  const InvalidAbbreviationValidationError();

  @override
  String message() => 'Abbreviation must be 3 letters';
}
