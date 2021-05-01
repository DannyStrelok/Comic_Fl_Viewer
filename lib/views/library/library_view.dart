import 'package:comic_f_viewer/widgets/book/book_widget.dart';
import 'package:fluent_ui/fluent_ui.dart';

class LibraryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      header: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 25,),
            Expanded(child: Text('Biblioteca')),
            IconButton(icon: Icon(Icons.filter_alt_outlined)),
            IconButton(icon: Icon(Icons.playlist_add_check)),
            IconButton(icon: Icon(Icons.more_horiz)),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: [_Background(), _Bookshelf()],
        ),
      ),
    );
  }
}

class _Bookshelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 25,
          runSpacing: 25,
          children: List.generate(15, (index) => BookWidget(title: 'libro $index',)),
        ),
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

class _BookPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 250,
      color: Colors.grey,
    );
  }
}

