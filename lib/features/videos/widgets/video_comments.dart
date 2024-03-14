import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/sizes.dart';

class VideoComments extends StatefulWidget {
  const VideoComments({Key? key}) : super(key: key);

  @override
  State<VideoComments> createState() => _VideoCommentsState();
}

class _VideoCommentsState extends State<VideoComments> {
  void _onClosePressed() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size20)
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey.shade50,
          automaticallyImplyLeading: false,
          title:Text('22822 Comments'),
          actions: [
            IconButton(
              onPressed: _onClosePressed,
              icon: FaIcon(
                FontAwesomeIcons.xmark,
              ),
            ),
          ],
        ),
        body: ListView.builder(itemCount: 10,itemBuilder: (context,index) => Container(
          child: Text('im a comment'),
        )),
      ),
    );
  }
}
