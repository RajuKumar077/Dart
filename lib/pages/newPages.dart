import 'package:flutter/material.dart';
import 'package:mishtu/theme/custom_app_bar.dart';
import 'package:mishtu/theme/theme.dart';

class newPages extends StatelessWidget {
  const newPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 50.0,
        backgroundColor: Colors.blue,
        title: 'Radhe Radhe',
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.orange[200],
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            buildAvatarList(),
            SizedBox(height: 10),
            buildGridView(),
          ],
        ),
      ),
    );
  }

  Widget buildAvatarList() {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 80,
            child: CircleAvatar(
              child: Container(
                decoration: customBoxDecorationStyle.copyWith(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/avatarfolder/avatar${index + 1}.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Icon(Icons.person),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGridView() {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 20.0,
        children: List.generate(6, (index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: customBoxDecorationStyle.copyWith(),
              child: Center(
                child: Text(
                  'Grid Item $index',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
