import 'package:flutter/material.dart';
import 'package:newlearning/data/dummy_users.dart';
import 'package:newlearning/user_tile.dart';
import 'package:provider/provider.dart';
import 'package:newlearning/provider/users.dart';
import 'package:newlearning/routes/app_routes.dart';

class  UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
      title: Text("Lista de usuários"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {Navigator.of(context).pushNamed(AppRoutes.USER_FORM);})
        ],
      ),
      body: ListView.builder(
          itemCount: users.count ,
          itemBuilder:(ctx, i) => UserTile(users.byIndex(i)),
      )
    );
  }
}
