import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/src/blocs/members_bloc.dart';
import 'package:news_app/src/models/item_model.dart';

class MemberList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchMembers();

    return Scaffold(
      appBar: AppBar(title: const Text("Members Info App")),
      body: StreamBuilder(
        stream: bloc.memberList,
        builder: (context, AsyncSnapshot<List<Person>> snapshot) {
          return Text("${snapshot.data?.length}");
        },
      ),
    );
  }
}