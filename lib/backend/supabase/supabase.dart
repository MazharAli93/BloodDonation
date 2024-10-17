import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://kjucuvqldagqvqmlfswd.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtqdWN1dnFsZGFncXZxbWxmc3dkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjc0Nzg2NTMsImV4cCI6MjA0MzA1NDY1M30.EviOqCHC28kF4RijHMA2ap-xaMAWLsjt3mv_vTtoofw';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
