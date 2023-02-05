import 'package:flutter/cupertino.dart';
import '../data/dummy_users.dart';
import '../user.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }
  int get count {
     return _items.length;
  }
  User byIndex(int i){
    return _items.values.elementAt(i);
  }
  void put (User user) {
    if (user == null) {
      return;
    }

    if (user.id
        .trim()
        .isNotEmpty && _items.containsKey(user.id)) {
      _items.update(user.id, (_) =>
          User(
            id: user.id,
            name: user.name,
            email: user.email ,
            password: user.password
          ));
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(id, () => User(
        id: id,
        name: user.name,
        email: user.email,
        password: user.password
      ),
      );
    }
    notifyListeners();
    }
    void deletar(User user){
    _items.remove(user.id);
    notifyListeners();
    }
}