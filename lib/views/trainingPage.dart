import 'package:flutter/material.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'PLAN'),
    Tab(text: 'PERSONAL BESTS'),
  ];

  TabBar get _myTabsBar => TabBar(
        tabs: myTabs,
        unselectedLabelColor: Colors.white,
        labelColor: Colors.yellow,
        indicatorColor: Colors.white,
        splashBorderRadius: BorderRadius.circular(40),
        /*overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) return Colors.black;
            return null;
          },
        ),*/
      );
  static const List<Tab> PBs = <Tab>[
    Tab(text: 'COMPETITION'),
    Tab(text: 'TRAININGS'),
  ];

  TabBar get _PBsBar => TabBar(
        tabs: PBs,
        unselectedLabelColor: Colors.white,
        labelColor: Colors.yellow,
        indicatorColor: Colors.white,
        splashBorderRadius: BorderRadius.circular(40),
        /*overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) return Colors.black;
            return null;
          },
        ),*/
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Stats",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          backgroundColor: Colors.brown,
          bottom: PreferredSize(
            preferredSize: _myTabsBar.preferredSize,
            child: Material(
              color: Colors.red,
              child: Theme(
                data: ThemeData().copyWith(splashColor: Colors.white),
                child: _myTabsBar,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Text("1st"),
            DefaultTabController(
              length: 2,
              child: Scaffold(
                backgroundColor: Colors.white,
                body: Column(children: [
                  PreferredSize(
                    preferredSize: _PBsBar.preferredSize,
                    child: Material(
                      color: Colors.red,
                      child: Theme(
                        data: ThemeData().copyWith(splashColor: Colors.white),
                        child: _PBsBar,
                      ),
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                    children: [
                      Text("1"),
                      Text("2"),
                    ],
                  )),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
