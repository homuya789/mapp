import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//SafeArea 사용해서 노치, 홈인디케이터 영역 피하기

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class WriteBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Text("글을 작성해보세요"),
    );
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 246, 242, 1),
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
            SizedBox(height: 6),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 2,
            color: const Color.fromRGBO(232, 227, 220, 1), //AppBar 아래 선
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
      ),

      body: Padding(
        padding: EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "TODAY",
              style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(200, 149, 106, 1),
              ),
            ),
            Text(
              '"지쳐도 괜찮아요. 오늘 하루를 살아낸 것만으로도 충분합니다."',
              style: GoogleFonts.nanumMyeongjo(
                fontSize: 13,
                color: Color(0xFF3D2E26),
              ),
            ),
            SizedBox(height: 20),
            WriteBox(),
          ],
        ),
      ),
    );
  }
}
