import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // 날짜 포맷을 위해 intl 패키지를 사용

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatScreen2(),
    );
  }
}

class ChatScreen2 extends StatefulWidget {
  const ChatScreen2({super.key});

  @override
  _ChatScreen1State createState() => _ChatScreen1State();
}

class _ChatScreen1State extends State<ChatScreen2> {
  // 좋아요 수를 저장할 변수
  int naverLikeCount = 40; // 기본값 40으로 설정
  int youtubeLikeCount = 55; // 기본값 55로 설정

  @override
  Widget build(BuildContext context) {
    // 현재 날짜를 yyyy년 M월 d일 형식으로 변환
    String currentDate = DateFormat('yyyy년 M월 d일').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC7B1D9), // 상단바 배경색
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // 뒤로 가기 아이콘
          onPressed: () {
            Navigator.pop(context); // 이전 화면으로 돌아가기
          },
        ),
        toolbarHeight: 30,
      ),
      backgroundColor: const Color(0xFFC7B1D9), // 배경색 설정 (연한 보라색 톤)
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30), // 상단 간격 추가
            // 날짜 표시
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFEAEAEA),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                currentDate,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Naver 카드
            buildChatBubble(
              imagePath: 'assets/img/naver_logo.png', // 이미지 경로
              platform: 'Naver',
              content:
                  '“셀럽커플, 눈맞춤”…아이유, 스윗한 출국\n아이유가 해외 일정을 위해 26일 오전 인천국제공항을 통해 인도네시아 자카르타로 출국함.',
              likeCount: naverLikeCount,
              onLikePressed: () {
                setState(() {
                  naverLikeCount++; // 좋아요 수 증가
                });
              },
            ),
            const SizedBox(height: 16),
            // YouTube 카드
            buildChatBubbleWithImage(
              logoPath: 'assets/img/youtube.png', // 왼쪽 로고 이미지 경로
              thumbnailPath: 'assets/img/IU_youtube.png', // 썸네일 이미지 경로
              platform: 'Youtube',
              videoTitle: '커플의 달달한 눈맞춤♥',
              likeCount: youtubeLikeCount,
              onLikePressed: () {
                setState(() {
                  youtubeLikeCount++; // 좋아요 수 증가
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  // Naver 카드 만들기
  Widget buildChatBubble({
    required String imagePath,
    required String platform,
    required String content,
    required int likeCount,
    required VoidCallback onLikePressed, // 좋아요 버튼 콜백 추가
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white, // 하얀 원
          radius: 16, // 원의 크기
          child: Image.asset(imagePath, width: 24, height: 24), // 이미지 크기
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        platform,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    content,
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '$likeCount',
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite, color: Colors.red),
                        onPressed: onLikePressed, // 좋아요 버튼 클릭 시 호출
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // YouTube 카드 만들기 (이미지 포함)
  Widget buildChatBubbleWithImage({
    required String logoPath, // 로고 이미지 경로
    required String thumbnailPath, // 썸네일 이미지 경로
    required String platform,
    required String videoTitle,
    required int likeCount,
    required VoidCallback onLikePressed, // 좋아요 버튼 콜백 추가
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white, // 하얀 원
          radius: 16, // 원의 크기
          child: Image.asset(logoPath, width: 24, height: 24), // 로고 이미지
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 썸네일 이미지
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(thumbnailPath,
                      width: double.infinity, height: 180, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            platform,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        videoTitle,
                        style: const TextStyle(
                            fontSize: 14, color: Colors.black54),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '$likeCount',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                          IconButton(
                            icon: const Icon(Icons.favorite, color: Colors.red),
                            onPressed: onLikePressed, // 좋아요 버튼 클릭 시 호출
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
