import 'package:supabase/supabase.dart';

const supaBaseUrl = 'https://bflfudwndxmjqpnoqodr.supabase.co';
const supaBaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyNzEyNDc0MywiZXhwIjoxOTQyNzAwNzQzfQ.98_TGRQMNC_dic2nMIww80v8Ij4Z5PxakeqCj3s9now';

class SupaManager {
  final client = SupabaseClient(supaBaseUrl, supaBaseKey);

  Future<void> signUpUser(String email, String password) async {
    await client.auth.signUp(email, password);
  }

  Future<void> signInUser(String email, String password) async {
    await client.auth.signIn(email: email, password: password);
  }

  User getUser() {
    return client.auth.currentUser;
  }

  getData() async {
    var response = await client.from('datatable').select().execute();
    if (response.error == null) {
      print('response.data: ${response.data}');
    }
  }

  addData(String friendName) async {
    await client.from('datatable').insert([{'name': friendName}]).execute();
  }
}