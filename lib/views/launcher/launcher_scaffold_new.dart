import 'package:comic_f_viewer/views/library/library_view.dart';
import 'package:fluent_ui/fluent_ui.dart';

class LauncherScaffoldFluent extends StatefulWidget {
  @override
  _LauncherScaffoldFluentState createState() => _LauncherScaffoldFluentState();
}

class _LauncherScaffoldFluentState extends State<LauncherScaffoldFluent> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      left: NavigationPanel(
        displayMode: NavigationPanelDisplayMode.compact,
        currentIndex: this._currentIndex,
        menu: NavigationPanelMenuItem(
          icon: Icon(Icons.menu),
        ),
        items: [
          NavigationPanelItem(
            icon: Icon(Icons.home_outlined),
            label: Text('Biblioteca'),
            onTapped: () => setState(() => this._currentIndex = 0)
          ),
          NavigationPanelTileSeparator(),
          NavigationPanelItem(
              icon: Icon(Icons.chrome_reader_mode),
              label: Text('Leyendo actualmente'),
              onTapped: () => setState(() => this._currentIndex = 1)
          ),
        ],
      ),
      body: NavigationPanelBody(
        index: this._currentIndex,
        transitionBuilder: (child, animation) {
          return EntrancePageTransition(
              child: child,
              animation: animation
          );
        },
        children: [
          LibraryView(),
          Container(
            color: Colors.teal,
            child: Center(child: Text('pagina 1'),),
          ),
        ],
      )
    );
  }
}

