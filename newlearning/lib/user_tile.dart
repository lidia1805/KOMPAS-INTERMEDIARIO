import 'package:flutter/material.dart';
import 'package:newlearning/routes/app_routes.dart';
import 'package:newlearning/user.dart';
import 'package:provider/provider.dart';
import 'package:newlearning/provider/users.dart';


class UserTile extends StatelessWidget {

  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.USER_UPDATE, arguments: user,);
            }, icon: Icon(Icons.edit)),
            IconButton(onPressed: () {Provider.of<Users>(context, listen: false).deletar(user);}, icon: Icon(Icons.delete))

          ]
        )
      )
    );
  }
}
