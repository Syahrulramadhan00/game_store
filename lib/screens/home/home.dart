import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';
import 'widgets/header.dart';
import 'widgets/search.dart';
import 'widgets/category.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset('assets/images/bg_liquid.png',
              width: 200,
            ),
            ),
          Positioned(
            right: 0,
            top: 200,
            child:Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(180, 100),
              child: Image.asset('assets/images/bg_liquid.png',
              width: 200,
            ),
            ),
            ),
          Column(
            children: [
              const Header(), 
              const Search(),
              CategoryGame(),
            ],
          )
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      color: const Color(0xfff6f8ff),
      child:  Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          ),
          child: BottomNavigationBar(
//            backgroundColor: Colors.white,
            selectedItemColor: kPrimary,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                label:'home', 
                icon: Icon(
                  Icons.home_rounded,
                  size: 50,
                )
                ),
                _buildItem('Application', Icons.more_horiz_outlined),
                _buildItem('Film', Icons.play_arrow_rounded),
                _buildItem('Book', Icons.auto_stories_rounded),
            ],
            ),
        ),
      ),

    );
  }

  BottomNavigationBarItem _buildItem (String text, IconData icon) {
  return BottomNavigationBarItem(
    label: text,
    icon: Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        size: 30,
        color: Colors.grey,
      ),
    )
  );
}
}