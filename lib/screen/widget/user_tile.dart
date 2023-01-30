import 'package:flutter/material.dart';

class UserTileWidget extends StatelessWidget {
  final String name;
  final String avatar;
  final String email;
  const UserTileWidget({
    super.key,
    required this.name,
    required this.avatar,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: Text(avatar),
      ),
      title: Text(
        name,
        maxLines: 1,
      ),
      subtitle: Text(
        email,
        maxLines: 1,
      ),
    );
  }
}
