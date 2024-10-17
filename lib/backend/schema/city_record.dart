import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CityRecord extends FirestoreRecord {
  CityRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "CityName" field.
  String? _cityName;
  String get cityName => _cityName ?? '';
  bool hasCityName() => _cityName != null;

  // "DistrictRef" field.
  DocumentReference? _districtRef;
  DocumentReference? get districtRef => _districtRef;
  bool hasDistrictRef() => _districtRef != null;

  void _initializeFields() {
    _createdAt = snapshotData['Created_at'] as DateTime?;
    _cityName = snapshotData['CityName'] as String?;
    _districtRef = snapshotData['DistrictRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('City');

  static Stream<CityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CityRecord.fromSnapshot(s));

  static Future<CityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CityRecord.fromSnapshot(s));

  static CityRecord fromSnapshot(DocumentSnapshot snapshot) => CityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCityRecordData({
  DateTime? createdAt,
  String? cityName,
  DocumentReference? districtRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_at': createdAt,
      'CityName': cityName,
      'DistrictRef': districtRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CityRecordDocumentEquality implements Equality<CityRecord> {
  const CityRecordDocumentEquality();

  @override
  bool equals(CityRecord? e1, CityRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.cityName == e2?.cityName &&
        e1?.districtRef == e2?.districtRef;
  }

  @override
  int hash(CityRecord? e) =>
      const ListEquality().hash([e?.createdAt, e?.cityName, e?.districtRef]);

  @override
  bool isValidKey(Object? o) => o is CityRecord;
}
