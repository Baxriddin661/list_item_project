import 'package:flutter/material.dart';

class ListItemPage extends StatefulWidget {
  const ListItemPage({Key? key}) : super(key: key);

  @override
  State<ListItemPage> createState() => _ListItemPageState();
}

class _ListItemPageState extends State<ListItemPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black54,
          title: const Text(
            'List Item Project',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                color: Colors.white70,
                child: TabBar(
                  mouseCursor: MouseCursor.defer,
                  labelColor: Colors.blue,
                  tabs: [tab(1), tab(2), tab(3)],
                ),
              ),
              Expanded(
                child: TabBarView(
                    children: [tabBarView(1), tabBarView(2), tabBarView(3)]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget tab(int count) {
    return Container(
      child: Tab(
        text: "Tab $count",
      ),
    );
  }

  Widget tabBarView(int tabCount) {
    return Container(
      height: 300,
      // width: 200,
      child: Column(
        children: [
          const Expanded(
            flex: 2,
            child: Center(
              child: Text(
                'TabBarView',
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
            ),
          ),
          Expanded(
            flex: tabCount,
            child: ListView.builder(
                reverse: true,
                itemCount: tabCount,
                itemBuilder: (context, index) {
                  return Container(
                      height: 100,
                      // color: Colors.grey,
                      child: const Card(
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          'List Item',
                          style: TextStyle(fontSize: 25),
                        )),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
