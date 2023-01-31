import 'package:apistudy/api/api.dart';
import 'package:apistudy/screen/widget/user_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Learning'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: APIs().getUserMethod(),
              builder: ((context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    itemCount: APIs.userList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return UserTileWidget(
                        //set id inside avatar
                        avatar: APIs.userList[index].id.toString(),

                        //to set the first letter from the title inside the avatar
                        // avatar: APIs.userList[index].title![0],
                        name: APIs.userList[index].title.toString(),
                        email: APIs.userList[index].body.toString(),
                      );
                    },
                  );
                }
              }),
            ),
          )
        ],
      ),
    );
  }
}
