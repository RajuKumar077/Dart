import 'package:flutter/material.dart';
import 'package:mishtu/pages/login.dart';
import 'package:mishtu/pages/second_page.dart';
import 'package:mishtu/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
        primaryColor: Colors.cyan, // set the primary color for the theme
        accentColor: Colors.green, // set the accent color for the theme
        fontFamily: 'Raleway-SemiBold',
        // set the default font family for the theme
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    var arrName = ['Rahul', 'Raju', 'Namrata', 'Rocco', 'John'];
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.amber, Colors.orange],
              center: Alignment.center,
              radius: 2,
              // end: Alignment.bottomRight,
            ),
          ),
        ),
        toolbarHeight: 90,
        title: Expanded(
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'RAJU-INDUSTRY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Avengeance',
                      color: Colors.black87,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
              Center(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/images/ganeshji.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('You are Searching');
            },
          ),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'option1',
                  child: Text('Option 1'),
                ),
                PopupMenuItem<String>(
                  value: 'option2',
                  child: Text('Option 2'),
                ),
              ];
            },
            onSelected: (String value) {
              // Handle menu item selection
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/yellow.jpg'),
                  fit: BoxFit.cover,
                ),
              ),

              // padding: EdgeInsets.all(23),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 80.0),
                    child: Image.asset(
                      'assets/images/krishna.png',
                      height: 200,
                      width: 350,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Transform.translate(
                      offset: Offset(0, -90),
                      child: Text(
                        '🕯HARE KRISHNA🕯',
                        style: TextStyle(
                          fontFamily: 'Avengeance',
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Transform.translate(
                    offset: Offset(0, -90),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondPage()),
                        );
                      },
                      child: Text('Radhe Radhe'),
                      style: customButtonStyle,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, -70),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text('Login'),
                      style: customButtonStyle,
                    ),
                  ),
                ],
              ),
            ), //Container 1
            SizedBox(height: 1),
            Container(
              //Container 2
              height: 200,
              color: Colors.indigo,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'HOW YOU DOING?',
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        //on Container
                        print('tapped on Container');
                      },
                      onLongPress: () {
                        print('long tapped on Container');
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              //on Container
                              print('tapped on me');
                            },
                            child: Text(
                              'Tap me ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), // Container 2

            Container(
              height: 400,
              child: ListView(
                // padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  ),
                  Container(
                    height: 200,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        if (index >= arrName.length) return null;
                        return Text(arrName[index]);
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 10,
                          thickness: 2,
                          color: Colors.pink,
                        ); // add a divider between items
                      },
                      itemCount: arrName.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
