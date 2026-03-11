import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//SafeArea 노치, 홈인디케이터 영역 피하기

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today 👋", style: GoogleFonts.nanumMyeongjo()),
            Text("오늘 하루를 살아낸 것만으로도 충분합니다.", style: GoogleFonts.nanumMyeongjo()),
          ],
        ),
        CircleAvatar(radius: 18),
      ],
    );
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Header(),
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0Xffffffff),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
