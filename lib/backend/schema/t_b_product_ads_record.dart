import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TBProductAdsRecord extends FirestoreRecord {
  TBProductAdsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "productRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "ads_image" field.
  String? _adsImage;
  String get adsImage => _adsImage ?? '';
  bool hasAdsImage() => _adsImage != null;

  void _initializeFields() {
    _productRef = snapshotData['productRef'] as DocumentReference?;
    _adsImage = snapshotData['ads_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TB_productAds');

  static Stream<TBProductAdsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TBProductAdsRecord.fromSnapshot(s));

  static Future<TBProductAdsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TBProductAdsRecord.fromSnapshot(s));

  static TBProductAdsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TBProductAdsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TBProductAdsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TBProductAdsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TBProductAdsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TBProductAdsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTBProductAdsRecordData({
  DocumentReference? productRef,
  String? adsImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productRef': productRef,
      'ads_image': adsImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class TBProductAdsRecordDocumentEquality
    implements Equality<TBProductAdsRecord> {
  const TBProductAdsRecordDocumentEquality();

  @override
  bool equals(TBProductAdsRecord? e1, TBProductAdsRecord? e2) {
    return e1?.productRef == e2?.productRef && e1?.adsImage == e2?.adsImage;
  }

  @override
  int hash(TBProductAdsRecord? e) =>
      const ListEquality().hash([e?.productRef, e?.adsImage]);

  @override
  bool isValidKey(Object? o) => o is TBProductAdsRecord;
}
