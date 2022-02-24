import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MainText extends StatefulWidget {
  const MainText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  _MainTextState createState() => _MainTextState();
}

class _MainTextState extends State<MainText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      print("WidgetsBinding");
    });
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      print("SchedulerBinding");
    });
    WidgetsBinding.instance?.addPersistentFrameCallback((timeStamp) {
      print(timeStamp);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void activate() {
    super.activate();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
  }

  @override
  void reassemble() {
    super.reassemble();
  }
}
