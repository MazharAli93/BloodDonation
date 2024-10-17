import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalRecord extends FirestoreRecord {
  HospitalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "HospitalName" field.
  String? _hospitalName;
  String get hospitalName => _hospitalName ?? '';
  bool hasHospitalName() => _hospitalName != null;

  // "CityRef" field.
  DocumentReference? _cityRef;
  DocumentReference? get cityRef => _cityRef;
  bool hasCityRef() => _cityRef != null;

  // "LocationURL" field.
  String? _locationURL;
  String get locationURL => _locationURL ?? '';
  bool hasLocationURL() => _locationURL != null;

  void _initializeFields() {
    _createdAt = snapshotData['Created_at'] as DateTime?;
    _hospitalName = snapshotData['HospitalName'] as String?;
    _cityRef = snapshotData['CityRef'] as DocumentReference?;
    _locationURL = snapshotData['LocationURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Hospital');

  static Stream<HospitalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HospitalRecord.fromSnapshot(s));

  static Future<HospitalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HospitalRecord.fromSnapshot(s));

  static HospitalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HospitalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HospitalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HospitalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HospitalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HospitalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHospitalRecordData({
  DateTime? createdAt,
  String? hospitalName,
  DocumentReference? cityRef,
  String? locationURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_at': createdAt,
      'HospitalName': hospitalName,
      'CityRef': cityRef,
      'LocationURL': locationURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class HospitalRecordDocumentEquality implements Equality<HospitalRecord> {
  const HospitalRecordDocumentEquality();

  @override
  bool equals(HospitalRecord? e1, HospitalRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.hospitalName == e2?.hospitalName &&
        e1?.cityRef == e2?.cityRef &&
        e1?.locationURL == e2?.locationURL;
  }

  @override
  int hash(HospitalRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.hospitalName, e?.cityRef, e?.locationURL]);

  @override
  bool isValidKey(Object? o) => o is HospitalRecord;
}
