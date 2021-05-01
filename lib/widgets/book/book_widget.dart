import 'package:comic_f_viewer/views/reader/reader_view.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/rendering.dart';

class BookWidget extends StatefulWidget {
  final String title;

  BookWidget({required this.title});

  @override
  _BookWidgetState createState() => _BookWidgetState();
}

class _BookWidgetState extends State<BookWidget> {
  bool _hovering = false;

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
  
  final nonHoverTransform = Matrix4.identity()..rotateX(0);
  final hoverTransform = Matrix4.identity()..rotateX(0.2)..scale(1.05);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, FluentPageRoute(builder: (_) => ReaderView()));
      },
      child: MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: _hovering ? hoverTransform : nonHoverTransform,
          child: Container(
            width: 175,
            height: 250,
            color: Colors.grey,
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}
