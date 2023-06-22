import 'package:flutter/foundation.dart';
import 'package:news_app/src/resources/MembersInfoRepository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/item_model.dart';

class MembersBloc{
  final _memberRepository = MembersInfoRepository();
  final _memberFetcher = PublishSubject<List<Person>>();

  Stream<List<Person>> get memberList  => _memberFetcher.stream;

  fetchMembers() async{
    List<Person> memberList = await _memberRepository.fetchMembers();
    _memberFetcher.sink.add(memberList);
  }

  dispose(){
    _memberFetcher.close();
  }
}

///This way we are giving access to a single instance of the MembersBloc class to the UI screen.
final bloc= MembersBloc();