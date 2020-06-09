import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/controllers/home_controller.dart';
import 'package:todo_list/pages/home/widgets/dialog_widget.dart';
import 'package:todo_list/pages/home/widgets/list_widget.dart';

/// by @lucas-marciano on 03/06/2020
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon _searchIcon = new Icon(Icons.search, color: Colors.white);
  Widget _appBarTitle = new Text('Tasks Flutter');
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    _buildDialog() {
      showDialog(
        context: context,
        builder: (_) => DialogWidget(),
      );
    }

    _buildSearchField() {
      return TextField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        onChanged: controller.setFilter,
        decoration: InputDecoration(
          hintText: "Search ...",
          hintStyle: TextStyle(
            color: Colors.white24,
            fontSize: 20,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      );
    }

    _buildToolbarTitleText() {
      return Text(
        'Tasks Flutter',
      );
    }

    _searchPressed() {
      setState(() {
        if (this._searchIcon.icon == Icons.search) {
          this._searchIcon = new Icon(Icons.close);
          this._appBarTitle = _buildSearchField();
        } else {
          this._searchIcon = new Icon(Icons.search);
          this._appBarTitle = _buildToolbarTitleText();
        }
      });
    }

    AppBar _buildToolbar() {
      return AppBar(
        title: AnimatedSwitcher(
          duration: Duration(
            milliseconds: 200,
          ),
          child: _appBarTitle,
        ),
        actions: [
          IconButton(
            icon: _searchIcon,
            onPressed: _searchPressed,
          ),
        ],
      );
    }

    FloatingActionButton _buildFab() {
      return FloatingActionButton(
        onPressed: _buildDialog,
        tooltip: 'New task',
        child: Icon(Icons.add),
      );
    }

    return Scaffold(
      appBar: _buildToolbar(),
      body: ListWidget(
        listKey: _listKey,
      ),
      floatingActionButton: _buildFab(),
    );
  }
}
