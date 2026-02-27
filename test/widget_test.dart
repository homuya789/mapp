import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // 페이지 인디케이터 패키지

class Inbo extends StatefulWidget {
  const Inbo({super.key});

  @override
  State<Inbo> createState() => _InboState();
}

class _InboState extends State<Inbo> {
  final PageController _controller = PageController();
  final int pageCount = 4;

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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      const Icon(
                        Icons.nightlight_round,
                        size: 120,
                        color: Colors.white24,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "당신의 감정",
                          style: TextStyle(
                            color: Color(0xFF3D2E26),
                            fontSize: 12,
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      Text.rich(
                        TextSpan(
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFDBCEA5), // 기본 색
                          ),
                          children: const [
                            TextSpan(text: "가끔은 그냥\n"),
                            TextSpan(
                              text: "지치잖아요",
                              style: TextStyle(color: Color(0xFF3D2E26)),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "아무것도 아닌 것에 상처받고, 설명하기도 힘든 그 감정들.\n여기선 억지로 괜찮은 척 안 해도 됩니다.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7A6A60),
                            height: 1.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// ===== 슬라이드 2 =====
                const Center(child: Text("슬라이드 2")),

                /// ===== 슬라이드 3 =====
                const Center(child: Text("슬라이드 3")),

                /// ===== 슬라이드 4 =====
                const Center(child: Text("슬라이드 4")),
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
