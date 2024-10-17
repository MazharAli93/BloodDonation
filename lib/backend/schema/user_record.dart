import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "FirstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "MiddleName" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  bool hasMiddleName() => _middleName != null;

  // "LastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "BloodType" field.
  String? _bloodType;
  String get bloodType => _bloodType ?? '';
  bool hasBloodType() => _bloodType != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "District" field.
  String? _district;
  String get district => _district ?? '';
  bool hasDistrict() => _district != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "Town" field.
  String? _town;
  String get town => _town ?? '';
  bool hasTown() => _town != null;

  // "AccessRole" field.
  String? _accessRole;
  String get accessRole => _accessRole ?? '';
  bool hasAccessRole() => _accessRole != null;

  // "DateofBirth" field.
  DateTime? _dateofBirth;
  DateTime? get dateofBirth => _dateofBirth;
  bool hasDateofBirth() => _dateofBirth != null;

  // "MotherName" field.
  String? _motherName;
  String get motherName => _motherName ?? '';
  bool hasMotherName() => _motherName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstName = snapshotData['FirstName'] as String?;
    _middleName = snapshotData['MiddleName'] as String?;
    _lastName = snapshotData['LastName'] as String?;
    _bloodType = snapshotData['BloodType'] as String?;
    _gender = snapshotData['Gender'] as String?;
    _district = snapshotData['District'] as String?;
    _city = snapshotData['City'] as String?;
    _town = snapshotData['Town'] as String?;
    _accessRole = snapshotData['AccessRole'] as String?;
    _dateofBirth = snapshotData['DateofBirth'] as DateTime?;
    _motherName = snapshotData['MotherName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstName,
  String? middleName,
  String? lastName,
  String? bloodType,
  String? gender,
  String? district,
  String? city,
  String? town,
  String? accessRole,
  DateTime? dateofBirth,
  String? motherName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'FirstName': firstName,
      'MiddleName': middleName,
      'LastName': lastName,
      'BloodType': bloodType,
      'Gender': gender,
      'District': district,
      'City': city,
      'Town': town,
      'AccessRole': accessRole,
      'DateofBirth': dateofBirth,
      'MotherName': motherName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.firstName == e2?.firstName &&
        e1?.middleName == e2?.middleName &&
        e1?.lastName == e2?.lastName &&
        e1?.bloodType == e2?.bloodType &&
        e1?.gender == e2?.gender &&
        e1?.district == e2?.district &&
        e1?.city == e2?.city &&
        e1?.town == e2?.town &&
        e1?.accessRole == e2?.accessRole &&
        e1?.dateofBirth == e2?.dateofBirth &&
        e1?.motherName == e2?.motherName;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.firstName,
        e?.middleName,
        e?.lastName,
        e?.bloodType,
        e?.gender,
        e?.district,
        e?.city,
        e?.town,
        e?.accessRole,
        e?.dateofBirth,
        e?.motherName
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
