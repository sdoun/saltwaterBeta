// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SWTagsSchemaStruct extends FFFirebaseStruct {
  SWTagsSchemaStruct({
    bool? sWSw,
    bool? sWDock,
    bool? sWTetra,
    bool? sWShift,
    bool? sWLodging,
    bool? sWRestaurant,
    bool? sWShop,
    bool? sWToilet,
    bool? sWCarcamping,
    bool? sWCancook,
    bool? sWStreetlight,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sWSw = sWSw,
        _sWDock = sWDock,
        _sWTetra = sWTetra,
        _sWShift = sWShift,
        _sWLodging = sWLodging,
        _sWRestaurant = sWRestaurant,
        _sWShop = sWShop,
        _sWToilet = sWToilet,
        _sWCarcamping = sWCarcamping,
        _sWCancook = sWCancook,
        _sWStreetlight = sWStreetlight,
        super(firestoreUtilData);

  // "SW_sw" field.
  bool? _sWSw;
  bool get sWSw => _sWSw ?? false;
  set sWSw(bool? val) => _sWSw = val;

  bool hasSWSw() => _sWSw != null;

  // "SW_Dock" field.
  bool? _sWDock;
  bool get sWDock => _sWDock ?? false;
  set sWDock(bool? val) => _sWDock = val;

  bool hasSWDock() => _sWDock != null;

  // "SW_tetra" field.
  bool? _sWTetra;
  bool get sWTetra => _sWTetra ?? false;
  set sWTetra(bool? val) => _sWTetra = val;

  bool hasSWTetra() => _sWTetra != null;

  // "SW_shift" field.
  bool? _sWShift;
  bool get sWShift => _sWShift ?? false;
  set sWShift(bool? val) => _sWShift = val;

  bool hasSWShift() => _sWShift != null;

  // "SW_lodging" field.
  bool? _sWLodging;
  bool get sWLodging => _sWLodging ?? false;
  set sWLodging(bool? val) => _sWLodging = val;

  bool hasSWLodging() => _sWLodging != null;

  // "SW_restaurant" field.
  bool? _sWRestaurant;
  bool get sWRestaurant => _sWRestaurant ?? false;
  set sWRestaurant(bool? val) => _sWRestaurant = val;

  bool hasSWRestaurant() => _sWRestaurant != null;

  // "SW_shop" field.
  bool? _sWShop;
  bool get sWShop => _sWShop ?? false;
  set sWShop(bool? val) => _sWShop = val;

  bool hasSWShop() => _sWShop != null;

  // "SW_toilet" field.
  bool? _sWToilet;
  bool get sWToilet => _sWToilet ?? false;
  set sWToilet(bool? val) => _sWToilet = val;

  bool hasSWToilet() => _sWToilet != null;

  // "SW_carcamping" field.
  bool? _sWCarcamping;
  bool get sWCarcamping => _sWCarcamping ?? false;
  set sWCarcamping(bool? val) => _sWCarcamping = val;

  bool hasSWCarcamping() => _sWCarcamping != null;

  // "SW_cancook" field.
  bool? _sWCancook;
  bool get sWCancook => _sWCancook ?? false;
  set sWCancook(bool? val) => _sWCancook = val;

  bool hasSWCancook() => _sWCancook != null;

  // "SW_streetlight" field.
  bool? _sWStreetlight;
  bool get sWStreetlight => _sWStreetlight ?? false;
  set sWStreetlight(bool? val) => _sWStreetlight = val;

  bool hasSWStreetlight() => _sWStreetlight != null;

  static SWTagsSchemaStruct fromMap(Map<String, dynamic> data) =>
      SWTagsSchemaStruct(
        sWSw: data['SW_sw'] as bool?,
        sWDock: data['SW_Dock'] as bool?,
        sWTetra: data['SW_tetra'] as bool?,
        sWShift: data['SW_shift'] as bool?,
        sWLodging: data['SW_lodging'] as bool?,
        sWRestaurant: data['SW_restaurant'] as bool?,
        sWShop: data['SW_shop'] as bool?,
        sWToilet: data['SW_toilet'] as bool?,
        sWCarcamping: data['SW_carcamping'] as bool?,
        sWCancook: data['SW_cancook'] as bool?,
        sWStreetlight: data['SW_streetlight'] as bool?,
      );

  static SWTagsSchemaStruct? maybeFromMap(dynamic data) => data is Map
      ? SWTagsSchemaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'SW_sw': _sWSw,
        'SW_Dock': _sWDock,
        'SW_tetra': _sWTetra,
        'SW_shift': _sWShift,
        'SW_lodging': _sWLodging,
        'SW_restaurant': _sWRestaurant,
        'SW_shop': _sWShop,
        'SW_toilet': _sWToilet,
        'SW_carcamping': _sWCarcamping,
        'SW_cancook': _sWCancook,
        'SW_streetlight': _sWStreetlight,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'SW_sw': serializeParam(
          _sWSw,
          ParamType.bool,
        ),
        'SW_Dock': serializeParam(
          _sWDock,
          ParamType.bool,
        ),
        'SW_tetra': serializeParam(
          _sWTetra,
          ParamType.bool,
        ),
        'SW_shift': serializeParam(
          _sWShift,
          ParamType.bool,
        ),
        'SW_lodging': serializeParam(
          _sWLodging,
          ParamType.bool,
        ),
        'SW_restaurant': serializeParam(
          _sWRestaurant,
          ParamType.bool,
        ),
        'SW_shop': serializeParam(
          _sWShop,
          ParamType.bool,
        ),
        'SW_toilet': serializeParam(
          _sWToilet,
          ParamType.bool,
        ),
        'SW_carcamping': serializeParam(
          _sWCarcamping,
          ParamType.bool,
        ),
        'SW_cancook': serializeParam(
          _sWCancook,
          ParamType.bool,
        ),
        'SW_streetlight': serializeParam(
          _sWStreetlight,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SWTagsSchemaStruct fromSerializableMap(Map<String, dynamic> data) =>
      SWTagsSchemaStruct(
        sWSw: deserializeParam(
          data['SW_sw'],
          ParamType.bool,
          false,
        ),
        sWDock: deserializeParam(
          data['SW_Dock'],
          ParamType.bool,
          false,
        ),
        sWTetra: deserializeParam(
          data['SW_tetra'],
          ParamType.bool,
          false,
        ),
        sWShift: deserializeParam(
          data['SW_shift'],
          ParamType.bool,
          false,
        ),
        sWLodging: deserializeParam(
          data['SW_lodging'],
          ParamType.bool,
          false,
        ),
        sWRestaurant: deserializeParam(
          data['SW_restaurant'],
          ParamType.bool,
          false,
        ),
        sWShop: deserializeParam(
          data['SW_shop'],
          ParamType.bool,
          false,
        ),
        sWToilet: deserializeParam(
          data['SW_toilet'],
          ParamType.bool,
          false,
        ),
        sWCarcamping: deserializeParam(
          data['SW_carcamping'],
          ParamType.bool,
          false,
        ),
        sWCancook: deserializeParam(
          data['SW_cancook'],
          ParamType.bool,
          false,
        ),
        sWStreetlight: deserializeParam(
          data['SW_streetlight'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SWTagsSchemaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SWTagsSchemaStruct &&
        sWSw == other.sWSw &&
        sWDock == other.sWDock &&
        sWTetra == other.sWTetra &&
        sWShift == other.sWShift &&
        sWLodging == other.sWLodging &&
        sWRestaurant == other.sWRestaurant &&
        sWShop == other.sWShop &&
        sWToilet == other.sWToilet &&
        sWCarcamping == other.sWCarcamping &&
        sWCancook == other.sWCancook &&
        sWStreetlight == other.sWStreetlight;
  }

  @override
  int get hashCode => const ListEquality().hash([
        sWSw,
        sWDock,
        sWTetra,
        sWShift,
        sWLodging,
        sWRestaurant,
        sWShop,
        sWToilet,
        sWCarcamping,
        sWCancook,
        sWStreetlight
      ]);
}

SWTagsSchemaStruct createSWTagsSchemaStruct({
  bool? sWSw,
  bool? sWDock,
  bool? sWTetra,
  bool? sWShift,
  bool? sWLodging,
  bool? sWRestaurant,
  bool? sWShop,
  bool? sWToilet,
  bool? sWCarcamping,
  bool? sWCancook,
  bool? sWStreetlight,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SWTagsSchemaStruct(
      sWSw: sWSw,
      sWDock: sWDock,
      sWTetra: sWTetra,
      sWShift: sWShift,
      sWLodging: sWLodging,
      sWRestaurant: sWRestaurant,
      sWShop: sWShop,
      sWToilet: sWToilet,
      sWCarcamping: sWCarcamping,
      sWCancook: sWCancook,
      sWStreetlight: sWStreetlight,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SWTagsSchemaStruct? updateSWTagsSchemaStruct(
  SWTagsSchemaStruct? sWTagsSchema, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sWTagsSchema
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSWTagsSchemaStructData(
  Map<String, dynamic> firestoreData,
  SWTagsSchemaStruct? sWTagsSchema,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sWTagsSchema == null) {
    return;
  }
  if (sWTagsSchema.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sWTagsSchema.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sWTagsSchemaData =
      getSWTagsSchemaFirestoreData(sWTagsSchema, forFieldValue);
  final nestedData =
      sWTagsSchemaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sWTagsSchema.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSWTagsSchemaFirestoreData(
  SWTagsSchemaStruct? sWTagsSchema, [
  bool forFieldValue = false,
]) {
  if (sWTagsSchema == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sWTagsSchema.toMap());

  // Add any Firestore field values
  sWTagsSchema.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSWTagsSchemaListFirestoreData(
  List<SWTagsSchemaStruct>? sWTagsSchemas,
) =>
    sWTagsSchemas?.map((e) => getSWTagsSchemaFirestoreData(e, true)).toList() ??
    [];
