import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//SafeArea 사용해서 노치, 홈인디케이터 영역 피하기

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//----------------글 작성 박스----------------
class WriteBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage("assets/unnamed.png"),
          ),
          SizedBox(width: 10),
          Text(
            "여기에 글을 작성해보세요.",
            style: GoogleFonts.nanumMyeongjo(
              fontSize: 13,
              color: Color(0xFF9C8F84),
            ),
          ),
        ],
      ),
    );
  }
}

//------------------------------------------

class PostList extends StatelessWidget {
  final List<String> posts = [
    "오늘 너무 힘든 하루였어요.",
    "누군가 제 이야기를 들어줬으면 좋겠어요.",
    "그래도 조금씩 괜찮아질 거라 믿어요.",
  ];
  //리스트를 게시글로 변환하는 위젯
  @override
  Widget build(BuildContext context) {
    return Column(children: posts.map((post) => PostCard(text: post)).toList());
  }
}

//-------게시글 ui----------------
class PostCard extends StatelessWidget {
  final String text;

  const PostCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.nanumMyeongjo(
          fontSize: 13,
          color: Color(0xFF3D2E26),
        ),
      ),
    );
  }
}

//----------------홈 화면----------------
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
                fontSize: 10,
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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 60,
                right: 60,
                top: 20,
                bottom: 20,
              ),
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
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nanumMyeongjo(
                      fontSize: 13,
                      color: Color(0xFF3D2E26),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            WriteBox(),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "안녕하세요 반갑습니다!!",
                      style: GoogleFonts.nanumMyeongjo(
                        fontSize: 16,
                        color: Color(0xFF3D2E26),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: Text(
                      "1분전",
                      style: GoogleFonts.nanumMyeongjo(
                        fontSize: 12,
                        color: Color(0xFF3D2E26),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.only(left: 300),
                        child: Image.asset("assets/icon.png", width: 25),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            PostList(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "작성"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "마이"),
        ],
      ),
    );
  }
}
