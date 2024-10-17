import '../database.dart';

class CitiesTable extends SupabaseTable<CitiesRow> {
  @override
  String get tableName => 'Cities';

  @override
  CitiesRow createRow(Map<String, dynamic> data) => CitiesRow(data);
}

class CitiesRow extends SupabaseDataRow {
  CitiesRow(super.data);

  @override
  SupabaseTable get table => CitiesTable();

  int get cityId => getField<int>('City_id')!;
  set cityId(int value) => setField<int>('City_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get districtRef => getField<int>('District-Ref');
  set districtRef(int? value) => setField<int>('District-Ref', value);

  String? get cityName => getField<String>('City_Name');
  set cityName(String? value) => setField<String>('City_Name', value);
}
