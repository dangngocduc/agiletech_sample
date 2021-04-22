import 'dart:developer' as developer;
import 'package:demo_1/data/models/user_model.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {

  final UserModel user;

  UserWidget({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.avatar),
            radius: 24,
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${user.firstName} ${user.lastName}', style: Theme.of(context).textTheme.subtitle1,),
                SizedBox(height: 4,),
                Text('${user.email}', style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          )
        ],
      ),

    );
  }
}
