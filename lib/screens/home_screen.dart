import 'package:flutter/material.dart';
import 'package:lampatronics/shared/category_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              // color: Colors.black,
              height: 100,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CategoryWidget(
                      imageCategory:
                          'https://cdn.icon-icons.com/icons2/916/PNG/512/Menu_icon_icon-icons.com_71858.png',
                      color: Colors.orange,
                      text: 'category',
                    ),
                  );
                },
                itemCount: 20,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
