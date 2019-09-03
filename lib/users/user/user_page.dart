import 'package:flutter/material.dart';

import 'package:sports_hub/users/user/carousel_widget.dart';
import 'packagE:sports_hub/users/user/event_list_widget.dart';

class UserPage extends StatelessWidget {
  static const routeName = '/user_page';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 2),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'User Page',
      )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildSectionTitle(context, 'Highlights'),
            CarouselWidget(),
            buildSectionTitle(context, 'Event\'s List'),
            EventListWidget(),
            buildSectionTitle(context, 'Mentor\'s List'),

          ],
        ),
      ),
    );
  }
}
