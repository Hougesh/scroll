import 'package:flutter/material.dart';
import 'posts/post_1.dart';
import 'posts/post_2.dart';
import 'posts/post_3.dart';
import 'posts/post_4.dart';
import 'posts/post_5.dart';
import 'posts/post_6.dart';
import 'posts/post_7.dart';
import 'posts/post_8.dart';
import 'posts/post_9.dart';
import 'posts/post_10.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: const [
          MyPost1(),
          MyPost2(),
          MyPost3(),
          MyPost4(),
          MyPost5(),
          MyPost6(),
          MyPost7(),
          MyPost8(),
          MyPost9(),
          MyPost10(),
        ],
      ),
    );
  }
}
