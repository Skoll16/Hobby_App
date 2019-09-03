import 'package:flutter/material.dart';

import 'package:sports_hub/models/event.dart';

class EventListWidget extends StatelessWidget {
  final List<Event> eventsList = [
    Event(
    id: '123',
    title: 'Test',
    location: 'Test-Addr.',
    date: DateTime(2019,9,10),
    phoneNumber: '8800816618'
    ),
    Event(
      id: '456',
      title: 'Test2',
      location: 'Test-Addr.2',
      date: DateTime(2019,10,10),
      phoneNumber: '8377988197'
    )];

    final List<String> _months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 150,
        child: eventsList.isEmpty
                ? LayoutBuilder(
                    builder: (context, constraints) {{}
                      return Text(
                        'No Events at the moemet!!!',
                        style: Theme.of(context).textTheme.title,
                      );
                    },
                  )
                : ListView.builder(
                  itemCount: eventsList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('${eventsList[index].date.day}\n${_months[eventsList[index].date.month-1]}'),
                          ),
                        ),
                        title: Text(eventsList[index].title),
                        subtitle: Text(eventsList[index].location),
                        trailing: IconButton(icon: Icon(Icons.call), onPressed: () {}),
                      ),
                    );
                  },
                ),
      ),
    );
  }
}