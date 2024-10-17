import '../database.dart';

class HospitalTable extends SupabaseTable<HospitalRow> {
  @override
  String get tableName => 'Hospital';

  @override
  HospitalRow createRow(Map<String, dynamic> data) => HospitalRow(data);
}

class HospitalRow extends SupabaseDataRow {
  HospitalRow(super.data);

  @override
  SupabaseTable get table => HospitalTable();

  int get hospitalId => getField<int>('Hospital_id')!;
  set hospitalId(int value) => setField<int>('Hospital_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get hospitalName => getField<String>('Hospital_Name');
  set hospitalName(String? value) => setField<String>('Hospital_Name', value);

  int? get cityRef => getField<int>('City_Ref');
  set cityRef(int? value) => setField<int>('City_Ref', value);

  String? get hospitalURL => getField<String>('HospitalURL');
  set hospitalURL(String? value) => setField<String>('HospitalURL', value);

  String? get phoneNumber => getField<String>('PhoneNumber');
  set phoneNumber(String? value) => setField<String>('PhoneNumber', value);
}
