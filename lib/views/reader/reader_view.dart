import 'package:fluent_ui/fluent_ui.dart';

class ReaderView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      header: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(icon: Icon(Icons.arrow_back_sharp), onPressed: () {
              Navigator.pop(context);
            },),
            Expanded(child: SizedBox())
          ],
        ),
      ),
      body: Container(
        child: Text('REader'),
      ),
    );
  }
}
