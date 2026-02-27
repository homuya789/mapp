import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 227, 220),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // 중요! 높이 최소화
          children: [
            Text(
              "Komma",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 30,
                color: const Color(0xFF3D2E26),
              ),
            ),
            //const SizedBox(height: 2),
            Text(
              "당신의 이야기를 들을게요.",
              style: GoogleFonts.nanumMyeongjo(
                fontSize: 12,
                color: Color(0xFF9C8F84),
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 3,
            color: const Color(0xFFE0D6CC), //AppBar 아래 선
          ),
        ),
        actions: [
          TextButton(
            child: const Text("전체"),
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF3D2E26),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const Text("힘들어요"),
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF3D2E26),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const Text("응원해줘요"),
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF3D2E26),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const Text("고마워요"),
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF3D2E26),
            ),
            onPressed: () {},
          ),
        ],
        /*
        
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFC8956A),
                ),
                children: const [
                  TextSpan(text: "지금 2,000명과 함께해요."),
                  TextSpan(
                    text: " 텍스트",
                    style: TextStyle(color: Color(0xFF3D2E26)),
                  ),
                ],
              ),
            ),
          ),
        ],*/
      ),
      body: const Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "TODAY",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(200, 149, 106, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
