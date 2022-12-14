import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;

  // ignore: use_key_in_widget_constructors
  const TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      margin: const EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? ("Unnamed Task"),
            style: const TextStyle(
              color: Color(0xff211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              desc ??
                  'Hello User! Welcome to MY_TODO app, this is a default task that you can edit or delete to start using the app.',
              style: const TextStyle(
                color: Color(0xff86829D),
                fontSize: 16.0,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Todowidget extends StatelessWidget {
  final String text;
  final bool isDone;
  Todowidget({this.text,@required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height: 20.0,
            margin: EdgeInsets.only(
              right: 16.0,
            ),
            decoration: BoxDecoration(
              color: isDone ? Color(0xff7349fe) : Colors.transparent,
              borderRadius: BorderRadius.circular(6.0),
              border: isDone ? null : Border.all(
                color: Color(0xff868290),
                width: 1.5
              )
            ),
            child: Image(
              image: AssetImage(
                'assets/images/check_icon.png',
              ),
            ),
          ),
          Text(
            text ?? "(Unnamed Todo)",
          style: TextStyle(
            color: isDone ? Color(0xff211551) : Color(0xff868290),
            fontSize: 16.0,
            fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
          ),
          ),
        ],
      ),
    );
  }
}

// class NoGlowBehaviour extends ScrollBehavior {
//   @override
//   Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
//     return child;
//   }
// }
class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

