import 'package:attendence/screens/applyleavescreen.dart';
import 'package:flutter/material.dart';

class ApplyLeave extends StatelessWidget {
  const ApplyLeave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildContainer(
      Column(
        children: [
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'CL/Contingency Leave',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '6.0 Remaining',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Valid Till: 31/12/2021',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            trailing: FlatButton(
              child: Text(
                'APPLY',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Divider(),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Optional Holiday',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '3.0 Remaining',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Valid Till: 31/12/2021',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            trailing: FlatButton(
              child: Text(
                'APPLY',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Divider(),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Special Privilege Leave',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '10.0 Remaining',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Valid Till: 31/12/2021',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            trailing: FlatButton(
              child: Text(
                'APPLY',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Divider(),
          FlatButton(
            child: Text(
              'See More',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 17,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(ApplyLeaveScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

Widget buildContainer(Widget child) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    height: 399,
    width: 450,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    child: child,
  );
}
