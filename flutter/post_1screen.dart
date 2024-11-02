import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // 날짜 포맷을 위해 intl 패키지를 사용
import 'package:url_launcher/url_launcher.dart'; // URL을 여는 패키지 추가

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatScreen1(),
    );
  }
}

class ChatScreen1 extends StatefulWidget {
  const ChatScreen1({super.key});

  @override
  _ChatScreen1State createState() => _ChatScreen1State();
}

class _ChatScreen1State extends State<ChatScreen1> {
  int naverLikeCount = 90;
  int youtubeLikeCount = 87;

  @override
  Widget build(BuildContext context) {
    String currentDate =
        DateFormat('yyyy년 M월 d일').format(DateTime(2024, 10, 29));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE9EC5F),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 30,
      ),
      backgroundColor: const Color(0xFFE9EC5F),
      body: SingleChildScrollView(
        // 스크롤 가능하도록 추가
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFBFBDF), // 배경색 변경
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
              buildChatBubble(
                imagePath: 'assets/img/naver_logo.png',
                platform: 'Naver',
                content:
                    "“1위 아이유·2위 이승기·3위 김민석”\n\n랭키파이가 10월 4주차 발라드 가수 트렌드지수를 발표하며, 아이유가 1위, 이승기가 2위, 김민석이 3위에 올랐다.\n트렌드지수는 구글 검색량과 네이버 검색 데이터를 종합하여 산출되며, 성별 선호도에서 아이유는 여성(62%)에게 더 많은 인기를 끌었다.\n연령대별 선호도에서는 20대가 아이유를 가장 많이 선호(30%)하며, 각 가수의 인기 경향이 연령대별로 뚜렷하게 구분되었다.",
                likeCount: naverLikeCount,
                onLikePressed: () {
                  setState(() {
                    naverLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/youtube.png',
                thumbnailPath: 'assets/img/IU_youtube.png',
                platform: 'Youtube',
                videoTitle: '[IU TV] 비행기가 있었는데요 없었습니다 ✈..🚙',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatBubble({
    required String imagePath,
    required String platform,
    required String content,
    required int likeCount,
    required VoidCallback onLikePressed,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 16,
          child: Image.asset(imagePath, width: 24, height: 24),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Card(
            color: Colors.white,
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
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.koreastocknews.com/news/articleView.html?idxno=104954';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                    child: Text(
                      content,
                      style: const TextStyle(
                          fontSize: 14, color: Colors.black), // 텍스트 색상 변경
                    ),
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
                        onPressed: onLikePressed,
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

  Widget buildChatBubbleWithImage({
    required String logoPath,
    required String thumbnailPath,
    required String platform,
    required String videoTitle,
    required int likeCount,
    required VoidCallback onLikePressed,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 16,
          child: Image.asset(logoPath, width: 24, height: 24),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Card(
            color: Colors.white, // 카드 배경색을 흰색으로 변경
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () async {
                    const url =
                        'https://www.youtube.com/watch?v=X2lQst4hlJI&t=109s'; // 변경된 유튜브 URL
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    child: Image.asset(thumbnailPath,
                        width: double.infinity, height: 180, fit: BoxFit.cover),
                  ),
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
                            fontSize: 14,
                            color: Color(0xFF000000)), // 텍스트 색상 변경
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
                            onPressed: onLikePressed,
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
