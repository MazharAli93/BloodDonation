import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'Users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  int get userId => getField<int>('User_id')!;
  set userId(int value) => setField<int>('User_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  String? get firstName => getField<String>('FirstName');
  set firstName(String? value) => setField<String>('FirstName', value);

  String? get middleName => getField<String>('MiddleName');
  set middleName(String? value) => setField<String>('MiddleName', value);

  String? get lastName => getField<String>('LastName');
  set lastName(String? value) => setField<String>('LastName', value);

  String? get mothersName => getField<String>('MothersName');
  set mothersName(String? value) => setField<String>('MothersName', value);

  String? get mobileNumber => getField<String>('MobileNumber');
  set mobileNumber(String? value) => setField<String>('MobileNumber', value);

  String? get gender => getField<String>('Gender');
  set gender(String? value) => setField<String>('Gender', value);

  String? get bloodType => getField<String>('BloodType');
  set bloodType(String? value) => setField<String>('BloodType', value);

  DateTime? get dateOfBirth => getField<DateTime>('DateOfBirth');
  set dateOfBirth(DateTime? value) => setField<DateTime>('DateOfBirth', value);

  int? get cityRef => getField<int>('City_Ref');
  set cityRef(int? value) => setField<int>('City_Ref', value);

  String? get address => getField<String>('Address');
  set address(String? value) => setField<String>('Address', value);

  String? get fireBaseRef => getField<String>('FireBase_Ref');
  set fireBaseRef(String? value) => setField<String>('FireBase_Ref', value);

  String? get accessRole => getField<String>('AccessRole');
  set accessRole(String? value) => setField<String>('AccessRole', value);
}
