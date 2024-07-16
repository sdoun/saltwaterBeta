import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TBFishingBusRecord extends FirestoreRecord {
  TBFishingBusRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "bus_name" field.
  String? _busName;
  String get busName => _busName ?? '';
  bool hasBusName() => _busName != null;

  // "bus_image" field.
  String? _busImage;
  String get busImage => _busImage ?? '';
  bool hasBusImage() => _busImage != null;

  void _initializeFields() {
    _busName = snapshotData['bus_name'] as String?;
    _busImage = snapshotData['bus_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TB_fishingBus');

  static Stream<TBFishingBusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TBFishingBusRecord.fromSnapshot(s));

  static Future<TBFishingBusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TBFishingBusRecord.fromSnapshot(s));

  static TBFishingBusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TBFishingBusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TBFishingBusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TBFishingBusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TBFishingBusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TBFishingBusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTBFishingBusRecordData({
  String? busName,
  String? busImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bus_name': busName,
      'bus_image': busImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class TBFishingBusRecordDocumentEquality
    implements Equality<TBFishingBusRecord> {
  const TBFishingBusRecordDocumentEquality();

  @override
  bool equals(TBFishingBusRecord? e1, TBFishingBusRecord? e2) {
    return e1?.busName == e2?.busName && e1?.busImage == e2?.busImage;
  }

  @override
  int hash(TBFishingBusRecord? e) =>
      const ListEquality().hash([e?.busName, e?.busImage]);

  @override
  bool isValidKey(Object? o) => o is TBFishingBusRecord;
}
