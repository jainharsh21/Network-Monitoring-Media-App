// ignore: import_of_legacy_library_into_null_safe
import 'package:connectivity_widget/connectivity_widget.dart';
import 'package:flutter/material.dart';
import 'package:rjstudio_assignment/constants/colors.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> with TickerProviderStateMixin {
  late TabController _tabController;
  List<Tab> tabList = [];

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConnectivityWidget(
      builder: (context, isOnline) => Center(
        child: isOnline
            ? SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TabBar(
                          controller: _tabController,
                          labelStyle: TextStyle(
                            color: mainThemeColor,
                            fontSize: 16,
                            fontFamily: "Noto Sans",
                            fontWeight: FontWeight.w700,
                          ),
                          unselectedLabelStyle: TextStyle(
                            color: Color(0xffc4c4c4),
                            fontSize: 16,
                          ),
                          labelColor: mainThemeColor,
                          unselectedLabelColor: Color(0xffc4c4c4),
                          indicatorColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              text: "PHOTS",
                            ),
                            Tab(
                              text: "VIDEOS",
                            ),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              Center(
                                child: Text('Photos'),
                              ),
                              Center(
                                child: Text('Videos'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Center(
                child: Text("Offline"),
              ),
      ),
    );
  }
}
