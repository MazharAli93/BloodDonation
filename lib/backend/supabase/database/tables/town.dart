import '../database.dart';

class TownTable extends SupabaseTable<TownRow> {
  @override
  String get tableName => 'Town';

  @override
  TownRow createRow(Map<String, dynamic> data) => TownRow(data);
}

class TownRow extends SupabaseDataRow {
  TownRow(super.data);

  @override
  SupabaseTable get table => TownTable();

  int get townId => getField<int>('Town_id')!;
  set townId(int value) => setField<int>('Town_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get cityRef => getField<int>('City_Ref');
  set cityRef(int? value) => setField<int>('City_Ref', value);

  String? get townName => getField<String>('Town_Name');
  set townName(String? value) => setField<String>('Town_Name', value);
}
