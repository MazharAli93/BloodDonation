import '../database.dart';

class DistrictTable extends SupabaseTable<DistrictRow> {
  @override
  String get tableName => 'District';

  @override
  DistrictRow createRow(Map<String, dynamic> data) => DistrictRow(data);
}

class DistrictRow extends SupabaseDataRow {
  DistrictRow(super.data);

  @override
  SupabaseTable get table => DistrictTable();

  int get districtId => getField<int>('District_id')!;
  set districtId(int value) => setField<int>('District_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get districtName => getField<String>('District_Name');
  set districtName(String? value) => setField<String>('District_Name', value);

  String? get firebaseRef => getField<String>('FirebaseRef');
  set firebaseRef(String? value) => setField<String>('FirebaseRef', value);
}
