import 'package:news_app/src/models/item_model.dart';
import 'package:news_app/src/resources/MembersInfoProvider.dart';

///This Repository class is the central point from where the data will flow to the BLOC.
class MembersInfoRepository{
  final _membersInfoProvider=MembersInfoProvider();

  Future<List<Person>> fetchMembers() => _membersInfoProvider.fetchMembers();
}