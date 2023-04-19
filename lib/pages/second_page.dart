import 'package:flutter/material.dart';
import 'package:mishtu/screens/avatar1.dart';
import 'package:mishtu/theme/custom_app_bar.dart';
import 'package:mishtu/theme/theme.dart';

class Person {
  final String name;
  final String email;

  Person({required this.name, required this.email});
}

// Create an array of Person objects
List<Person> people = [
  Person(name: 'John Doe', email: 'john.doe@example.com'),
  Person(name: 'Jane Smith', email: 'jane.smith@example.com'),
  Person(name: 'John Doe', email: 'john.doe@example.com'),
  Person(name: 'Jane Smith', email: 'jane.smith@example.com'),
  Person(name: 'Bob Johnson', email: 'bob.johnson@example.com'),
  Person(name: 'Rob Johnson', email: 'bob.johnson@example.com'),
  Person(name: 'Bob Johnson', email: 'bob.johnson@example.com'),
  Person(name: 'Rob Johnson', email: 'bob.johnson@example.com'),
  Person(name: 'John Doe', email: 'john.doe@example.com'),
  Person(name: 'Jane Smith', email: 'jane.smith@example.com'),
  Person(name: 'Bob Johnson', email: 'bob.johnson@example.com'),
  Person(name: 'Rob Johnson', email: 'bob.johnson@example.com'),
];

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 50.0,
        backgroundColor: Colors.blue,
        title: 'Radhe Radhe',
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          color: Colors.orange[700]!,
          child: Column(
            children: [
              Container(
                child: Expanded(
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/radhaji.png',
                          height: 200,
                          width: 200,
                        ),
                      ),
                      Container(
                        height: 525,
                        width: 380,
                        decoration: customBoxDecorationStyle,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: people.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(300.0),
                              ),
                              elevation: 12.0,
                              shadowColor: Colors.orange[900],
                              margin: EdgeInsets.all(8.0),
                              child: Container(
                                decoration: customBoxDecorationStyle,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage: AssetImage(
                                      'assets/images/avatarfolder/avatar${index + 1}.png',
                                    ),
                                  ),
                                  title: Text(
                                    people[index].name,
                                    style: TextStyle(
                                      fontFamily: 'Avengeance',
                                      fontSize: 25,
                                      color: Colors.red,
                                    ),
                                  ),
                                  subtitle: Text(people[index].email),
                                  trailing: GestureDetector(
                                    child: Icon(Icons.arrow_forward),
                                    onTap: () {
                                      // Navigate to a new page
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Avatar1()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
