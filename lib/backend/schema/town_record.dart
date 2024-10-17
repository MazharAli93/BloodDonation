import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TownRecord extends FirestoreRecord {
  TownRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "TownName" field.
  String? _townName;
  String get townName => _townName ?? '';
  bool hasTownName() => _townName != null;

  // "CityRef" field.
  DocumentReference? _cityRef;
  DocumentReference? get cityRef => _cityRef;
  bool hasCityRef() => _cityRef != null;

  void _initializeFields() {
    _createdAt = snapshotData['Created_at'] as DateTime?;
    _townName = snapshotData['TownName'] as String?;
    _cityRef = snapshotData['CityRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Town');

  static Stream<TownRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TownRecord.fromSnapshot(s));

  static Future<TownRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TownRecord.fromSnapshot(s));

  static TownRecord fromSnapshot(DocumentSnapshot snapshot) => TownRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TownRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TownRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TownRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TownRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTownRecordData({
  DateTime? createdAt,
  String? townName,
  DocumentReference? cityRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_at': createdAt,
      'TownName': townName,
      'CityRef': cityRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class TownRecordDocumentEquality implements Equality<TownRecord> {
  const TownRecordDocumentEquality();

  @override
  bool equals(TownRecord? e1, TownRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.townName == e2?.townName &&
        e1?.cityRef == e2?.cityRef;
  }

  @override
  int hash(TownRecord? e) =>
      const ListEquality().hash([e?.createdAt, e?.townName, e?.cityRef]);

  @override
  bool isValidKey(Object? o) => o is TownRecord;
}
