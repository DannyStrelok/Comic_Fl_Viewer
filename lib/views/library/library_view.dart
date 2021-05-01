import 'package:fluent_ui/fluent_ui.dart';

class LibraryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [_Background()],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://www.cinemascomics.com/wp-content/uploads/2020/08/invencible.jpg'),
                fit: BoxFit.cover)),
      ),
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.transparent, Colors.black],
          begin: const FractionalOffset(0.5, -3),
          end: Alignment.bottomCenter,
        )),
      )
    ]);
  }
}
