import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//SafeArea 노치, 홈인디케이터 영역 피하기

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class Today extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 20),
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
    );
  }
}

//----------------글 작성 박스----------------
class WriteBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
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
    "오늘은 유난히 마음이 무거운 날이에요.",
    "잠깐이라도 마음 편해지는 시간이 있었으면 좋겠어요.",
    "아무 말 없이 그냥 같이 있어줄 사람이 있었으면 좋겠어요.",
    "요즘은 작은 일에도 쉽게 지치는 것 같아요.",
    "괜찮은 척하는 것도 가끔은 힘들어요.",
    "그래도 내일은 조금 더 나아지겠죠.",
    "오늘 하루도 겨우 버텨낸 것 같아요.",
    "누군가에게 털어놓고 싶은 마음이에요.",
    "마음이 복잡해서 어디서부터 말해야 할지 모르겠어요.",
    "잠시 쉬어가도 괜찮겠죠.",
    "작은 위로 한마디가 필요해요.",
    "요즘은 웃는 게 조금 어려워졌어요.",
    "그래도 포기하지 않고 버텨보려고요.",
    "오늘도 스스로를 다독여 봅니다.",
    "언젠가는 이 시간도 지나가겠죠.",
    "조금만 더 힘내보려고 합니다.",
    "괜찮지 않아도 괜찮다고 말해봅니다.",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: posts.map((post) => PostCard(text: post)).toList());
  }
}

//----------------게시글 ui----------------
class PostCard extends StatelessWidget {
  final String text;

  const PostCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 12),
      width: double.infinity,
      height: 150,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text, // ← 여기 데이터 들어감
            style: GoogleFonts.nanumMyeongjo(
              fontSize: 16,
              color: const Color(0xFF3D2E26),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Text(
            "1분전",
            style: GoogleFonts.nanumMyeongjo(
              fontSize: 12,
              color: const Color(0xFF3D2E26),
            ),
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset("assets/icon.png", width: 25),
            ),
          ),
        ],
      ),
    );
  }
}
//----------------게시글 ui----------------

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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          WriteBox(),

          SizedBox(height: 20),
          Expanded(child: ListView(children: [Today(), PostList()])),
        ],
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
