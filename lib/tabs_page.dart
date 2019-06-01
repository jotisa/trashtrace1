
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  TabsPage();


  static const String routeName = '/tab';

  @override
  State<StatefulWidget> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage>
    with SingleTickerProviderStateMixin, RouteAware {
  _TabsPageState();

  TabController _controller;
  int selectedIndex = 0;

  final List<Tab> tabs = <Tab>[
    const Tab(text: 'LEFT'),
    const Tab(text: 'RIGHT'),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      vsync: this,
      length: tabs.length,
      initialIndex: selectedIndex,
    );
    _controller.addListener(() {
      setState(() {
        if (selectedIndex != _controller.index) {
          selectedIndex = _controller.index;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _controller,
          tabs: tabs,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: tabs.map((Tab tab) {
          return Center(child: Text(tab.text));
        }).toList(),
      ),
    );
  }
}
