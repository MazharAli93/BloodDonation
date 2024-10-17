import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DistrictRecord extends FirestoreRecord {
  DistrictRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "DistrictName" field.
  String? _districtName;
  String get districtName => _districtName ?? '';
  bool hasDistrictName() => _districtName != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _districtName = snapshotData['DistrictName'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('District');

  static Stream<DistrictRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DistrictRecord.fromSnapshot(s));

  static Future<DistrictRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DistrictRecord.fromSnapshot(s));

  static DistrictRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DistrictRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DistrictRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DistrictRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DistrictRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DistrictRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDistrictRecordData({
  String? districtName,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DistrictName': districtName,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class DistrictRecordDocumentEquality implements Equality<DistrictRecord> {
  const DistrictRecordDocumentEquality();

  @override
  bool equals(DistrictRecord? e1, DistrictRecord? e2) {
    return e1?.districtName == e2?.districtName &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(DistrictRecord? e) =>
      const ListEquality().hash([e?.districtName, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is DistrictRecord;
}
