import 'dart:developer' as developer;
import 'package:auth_nav/data/model/user.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  final User user;

  UserWidget(this.user);

  static const ROUTE_NAME = 'UserWidget';

  @override
  _UserWidgetState createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  static const TAG = 'UserWidget';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      // height: 100,
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: ClipOval(
                    clipBehavior: Clip.antiAlias,
                    // child: FadeInImage(
                    //   // placeholder: AssetImage(
                    //   //     "lib/app/assets/images/ic_loading_animation.gif"),
                    //   image: NetworkImage(widget.user.avatar),
                    // ),
                    child: Image.network(widget.user.avatar),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.user.firstName,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            widget.user.email,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
