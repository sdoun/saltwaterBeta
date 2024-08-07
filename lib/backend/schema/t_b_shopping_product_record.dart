import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TBShoppingProductRecord extends FirestoreRecord {
  TBShoppingProductRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_code" field.
  String? _productCode;
  String get productCode => _productCode ?? '';
  bool hasProductCode() => _productCode != null;

  // "product_category" field.
  String? _productCategory;
  String get productCategory => _productCategory ?? '';
  bool hasProductCategory() => _productCategory != null;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _productCode = snapshotData['product_code'] as String?;
    _productCategory = snapshotData['product_category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TB_shoppingProduct');

  static Stream<TBShoppingProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TBShoppingProductRecord.fromSnapshot(s));

  static Future<TBShoppingProductRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TBShoppingProductRecord.fromSnapshot(s));

  static TBShoppingProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TBShoppingProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TBShoppingProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TBShoppingProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TBShoppingProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TBShoppingProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTBShoppingProductRecordData({
  String? productName,
  String? productCode,
  String? productCategory,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'product_code': productCode,
      'product_category': productCategory,
    }.withoutNulls,
  );

  return firestoreData;
}

class TBShoppingProductRecordDocumentEquality
    implements Equality<TBShoppingProductRecord> {
  const TBShoppingProductRecordDocumentEquality();

  @override
  bool equals(TBShoppingProductRecord? e1, TBShoppingProductRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productCode == e2?.productCode &&
        e1?.productCategory == e2?.productCategory;
  }

  @override
  int hash(TBShoppingProductRecord? e) => const ListEquality()
      .hash([e?.productName, e?.productCode, e?.productCategory]);

  @override
  bool isValidKey(Object? o) => o is TBShoppingProductRecord;
}
