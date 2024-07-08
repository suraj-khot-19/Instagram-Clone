import 'package:flutter/material.dart';
import 'package:instagram/models/user.dart';
import 'package:instagram/models/user_data.dart';

import 'package:instagram/widgets/custom_spacer.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> user = UserData().user;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: user.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(left: 4, right: 4),
          width: 85,
          height: 100,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: index != 0
                    ? BoxDecoration(
                        border: Border.all(color: Colors.red, width: 2),
                        shape: BoxShape.circle,
                      )
                    : null,
                height: 75,
                width: 75,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    user[index].imgPath,
                  ),
                ),
              ),
              AddVerticleSpace(height: 4),
              Expanded(
                child: Text(
                  index == 0 ? "Your Story" : user[index].userName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
