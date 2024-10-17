import '../database.dart';

class RequestsTable extends SupabaseTable<RequestsRow> {
  @override
  String get tableName => 'Requests';

  @override
  RequestsRow createRow(Map<String, dynamic> data) => RequestsRow(data);
}

class RequestsRow extends SupabaseDataRow {
  RequestsRow(super.data);

  @override
  SupabaseTable get table => RequestsTable();

  int get requestId => getField<int>('Request_id')!;
  set requestId(int value) => setField<int>('Request_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userRef => getField<int>('User_Ref');
  set userRef(int? value) => setField<int>('User_Ref', value);

  int? get districtRef => getField<int>('District_Ref');
  set districtRef(int? value) => setField<int>('District_Ref', value);

  String? get districtName => getField<String>('District_Name');
  set districtName(String? value) => setField<String>('District_Name', value);

  int? get hospitalRef => getField<int>('Hospital_Ref');
  set hospitalRef(int? value) => setField<int>('Hospital_Ref', value);

  String? get hospitalName => getField<String>('Hospital_Name');
  set hospitalName(String? value) => setField<String>('Hospital_Name', value);

  String? get bloodType => getField<String>('BloodType');
  set bloodType(String? value) => setField<String>('BloodType', value);

  String? get donationType => getField<String>('DonationType');
  set donationType(String? value) => setField<String>('DonationType', value);

  String? get qunatity => getField<String>('Qunatity');
  set qunatity(String? value) => setField<String>('Qunatity', value);

  String? get patientFirstName => getField<String>('PatientFirstName');
  set patientFirstName(String? value) =>
      setField<String>('PatientFirstName', value);

  String? get mobileNumber => getField<String>('MobileNumber');
  set mobileNumber(String? value) => setField<String>('MobileNumber', value);

  String? get reasonRequest => getField<String>('ReasonRequest');
  set reasonRequest(String? value) => setField<String>('ReasonRequest', value);

  DateTime? get dateNeeded => getField<DateTime>('DateNeeded');
  set dateNeeded(DateTime? value) => setField<DateTime>('DateNeeded', value);

  String? get requestStatus => getField<String>('RequestStatus');
  set requestStatus(String? value) => setField<String>('RequestStatus', value);

  String? get patientMiddleName => getField<String>('PatientMiddleName');
  set patientMiddleName(String? value) =>
      setField<String>('PatientMiddleName', value);

  String? get patientLastName => getField<String>('PatientLastName');
  set patientLastName(String? value) =>
      setField<String>('PatientLastName', value);

  String? get cityName => getField<String>('CityName');
  set cityName(String? value) => setField<String>('CityName', value);

  int? get citryRef => getField<int>('Citry_Ref');
  set citryRef(int? value) => setField<int>('Citry_Ref', value);

  String? get hospitalURL => getField<String>('HospitalURL');
  set hospitalURL(String? value) => setField<String>('HospitalURL', value);
}
