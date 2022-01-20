import 'package:flutter/material.dart';
import 'package:labaratoriya/data/app_data.dart';
import 'package:labaratoriya/widgets.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = User.users;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < users.length; i++)
              UserAvatar(
                avatarColor: users[i].color,
                username: 'user${users[i].id}',
                onAvatarTap: () {},
              ),
          ],
        ),
      ),
    );
  }
}
