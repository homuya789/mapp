import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // 구글 폰트 패키지
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // 페이지 인디케이터 패키지

class Inbo extends StatefulWidget {
  const Inbo({super.key});

  @override
  State<Inbo> createState() => _InboState();
}

class _InboState extends State<Inbo> {
  final PageController _controller = PageController();
  final int pageCount = 4;

  Widget buildSlide({
    required IconData icon,
    required String tag,
    required String titleTop,
    required String titleBottom,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),

          Icon(icon, size: 120, color: Colors.white24),

          const SizedBox(height: 20),

          Text(
            tag,
            style: const TextStyle(color: Color(0xFF3D2E26), fontSize: 12),
          ),

          const SizedBox(height: 12),

          Text.rich(
            TextSpan(
              style: GoogleFonts.nanumMyeongjo(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: const Color(0xFFDBCEA5),
              ),
              children: [
                TextSpan(text: "$titleTop\n"),
                TextSpan(
                  text: titleBottom,
                  style: const TextStyle(color: Color(0xFF3D2E26)),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF7A6A60),
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E6DC),
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 투명한 배경
        title: const Text(
          "쉼표",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFE8B88A),
          ),
        ),
        centerTitle: false, // 왼쪽 정렬
        // 그림자 elevation: 0
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                buildSlide(
                  icon: Icons.nightlight_round,
                  tag: "당신의 감정",
                  titleTop: "가끔은 그냥",
                  titleBottom: "지치잖아요",
                  description: "아무것도 아닌 것에 상처받고...",
                ),

                buildSlide(
                  icon: Icons.people_outline,
                  tag: "서로의 공간",
                  titleTop: "같은 마음인",
                  titleBottom: "사람들이 있어요",
                  description: "완벽한 조언보다 나도 그래...",
                ),

                buildSlide(
                  icon: Icons.wb_sunny_outlined,
                  tag: "당신의 내일",
                  titleTop: "오늘 힘들어도",
                  titleBottom: "괜찮아요",
                  description: "판단 없이 익명으로...",
                ),

                buildSlide(
                  icon: Icons.home_outlined,
                  tag: "환영합니다",
                  titleTop: "당신의 쉼터에",
                  titleBottom: "오신 걸 환영해요",
                  description: "이름도 얼굴도 몰라도 괜찮아요.",
                ),
              ],
            ),
          ),

          // 아래 인디케이터
          SmoothPageIndicator(
            controller: _controller,
            count: pageCount,
            effect: ExpandingDotsEffect(
              dotWidth: 6,
              dotHeight: 6,
              activeDotColor: const Color(0xFFE8B88A),
              dotColor: Colors.grey.shade400,
              expansionFactor: 4,
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
