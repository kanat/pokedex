import 'package:flutter/material.dart';

class PokemonTabBar extends StatelessWidget {
  const PokemonTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return buildTabBar();
  }

  Widget buildTabBar() {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16))),
      child: Column(
        children: const [
          SizedBox(height: 30),
          TabBar(
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                  icon: Text("About",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w800,
                        fontSize: 13,
                      ))),
              Tab(
                  icon: Text("Base Stats",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w800,
                        fontSize: 13,
                      ))),
              Tab(
                  icon: Text("Evolution",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w800,
                        fontSize: 13,
                      ))),
              Tab(
                  icon: Text("Moves",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w800,
                        fontSize: 13,
                      ))),
            ],
          ),
        ],
      ),
    );
  }

}