import 'package:flutter/material.dart';

import 'api_services.dart';
class UsersViewScreen extends StatefulWidget {
  const UsersViewScreen({super.key});

  @override
  State<UsersViewScreen> createState() => _UsersViewScreenState();
}

class _UsersViewScreenState extends State<UsersViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
            child: Text("data view"),
          ),
        ),
        body: RefreshIndicator(
          child: FutureBuilder(
            future: UserApiServices().getImages(),
            builder: (context, snapshot) {
              var image = snapshot.data;
              return ListView.builder(
                itemCount: image?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "${image?[index].user?.profileImage?.small}")),
                    title: Text(
                      "${image?[index].user?.name}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "${image?[index].user?.firstName}",
                    ),
                  );
                },
              );
            },
          ),
          onRefresh: () {
            return UserApiServices().getImages();
          },
        ));
  }
}