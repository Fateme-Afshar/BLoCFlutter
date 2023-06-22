import 'dart:convert';

import '../models/item_model.dart';
import '../server_mock/mock_server_output.dart';

/// Create codes for receive info from network
class MembersInfoProvider {
  Future<List<Person>> fetchMembers() async {

    var mockResponse = personList();
    List<Person> members = [];

    for (var i = 0; i < mockResponse.length; i++) {
      Map<String, dynamic> memberMap = jsonDecode(mockResponse[i]);
      members.add(Person.fromJson(memberMap));
    }

    return Future(() => members);
  }
}
