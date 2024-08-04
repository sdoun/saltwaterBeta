// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WishProductOptionStruct extends FFFirebaseStruct {
  WishProductOptionStruct({
    String? optionTitle,
    String? optionValue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _optionTitle = optionTitle,
        _optionValue = optionValue,
        super(firestoreUtilData);

  // "option_title" field.
  String? _optionTitle;
  String get optionTitle => _optionTitle ?? '';
  set optionTitle(String? val) => _optionTitle = val;

  bool hasOptionTitle() => _optionTitle != null;

  // "option_value" field.
  String? _optionValue;
  String get optionValue => _optionValue ?? '';
  set optionValue(String? val) => _optionValue = val;

  bool hasOptionValue() => _optionValue != null;

  static WishProductOptionStruct fromMap(Map<String, dynamic> data) =>
      WishProductOptionStruct(
        optionTitle: data['option_title'] as String?,
        optionValue: data['option_value'] as String?,
      );

  static WishProductOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? WishProductOptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'option_title': _optionTitle,
        'option_value': _optionValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'option_title': serializeParam(
          _optionTitle,
          ParamType.String,
        ),
        'option_value': serializeParam(
          _optionValue,
          ParamType.String,
        ),
      }.withoutNulls;

  static WishProductOptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WishProductOptionStruct(
        optionTitle: deserializeParam(
          data['option_title'],
          ParamType.String,
          false,
        ),
        optionValue: deserializeParam(
          data['option_value'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WishProductOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WishProductOptionStruct &&
        optionTitle == other.optionTitle &&
        optionValue == other.optionValue;
  }

  @override
  int get hashCode => const ListEquality().hash([optionTitle, optionValue]);
}

WishProductOptionStruct createWishProductOptionStruct({
  String? optionTitle,
  String? optionValue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WishProductOptionStruct(
      optionTitle: optionTitle,
      optionValue: optionValue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WishProductOptionStruct? updateWishProductOptionStruct(
  WishProductOptionStruct? wishProductOption, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wishProductOption
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWishProductOptionStructData(
  Map<String, dynamic> firestoreData,
  WishProductOptionStruct? wishProductOption,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wishProductOption == null) {
    return;
  }
  if (wishProductOption.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wishProductOption.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wishProductOptionData =
      getWishProductOptionFirestoreData(wishProductOption, forFieldValue);
  final nestedData =
      wishProductOptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wishProductOption.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWishProductOptionFirestoreData(
  WishProductOptionStruct? wishProductOption, [
  bool forFieldValue = false,
]) {
  if (wishProductOption == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wishProductOption.toMap());

  // Add any Firestore field values
  wishProductOption.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWishProductOptionListFirestoreData(
  List<WishProductOptionStruct>? wishProductOptions,
) =>
    wishProductOptions
        ?.map((e) => getWishProductOptionFirestoreData(e, true))
        .toList() ??
    [];
