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
  _ChatScreen2State createState() => _ChatScreen2State();
}

class _ChatScreen2State extends State<ChatScreen2> {
  int naverLikeCount = 20;
  int youtubeLikeCount = 20;
  int textOnlyLikeCount = 10;
  int additionalLikeCount1 = 15;
  int additionalLikeCount2 = 5;

  @override
  Widget build(BuildContext context) {
    String currentDate =
        DateFormat('yyyy년 M월 d일').format(DateTime(2024, 10, 29));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC7B1D9),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 30,
      ),
      backgroundColor: const Color(0xFFC7B1D9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          // Column을 ListView로 변경
          children: [
            const SizedBox(height: 30),
            Container(
              width: 80,
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
            const SizedBox(height: 16),
            buildChatBubbleWithImage(
              logoPath: 'assets/img/instagram.png',
              thumbnailPath: 'assets/img/IU_Ins.png',
              platform: 'Instagram',
              videoTitle: "♥제주삼다수 X 아이유\n 11월 달력 大공개!♥",
              likeCount: youtubeLikeCount,
              onLikeTap: () {
                setState(() {
                  youtubeLikeCount++;
                });
              },
            ),
            const SizedBox(height: 16),
            buildChatBubbleWithImage(
              logoPath: 'assets/img/twitter.png',
              thumbnailPath: 'assets/img/IU_X(1).png',
              platform: 'Twitter',
              videoTitle:
                  "[IU TV] 장만월 사장의 삼도천 건너기 전 마지막 업무! \n배우 이지은의 스페셜한 \n인터뷰 현장!👩‍❤️‍👩🗣\n\nIU YouTube Channel ▶▶▶ https://youtu.be/kUsCuCiUVs0\n\n#이지은 #아이유 #이지은에게_물어봐",
              likeCount: additionalLikeCount1,
              onLikeTap: () {
                setState(() {
                  additionalLikeCount1++;
                });
              },
            ),
            const SizedBox(height: 16),
            buildChatBubbleWithImage(
              logoPath: 'assets/img/twitter.png',
              thumbnailPath: 'assets/img/IU_X(2).png',
              platform: 'Twitter',
              videoTitle: "아이유 미니 5집 선공개 곡 \n<Love poem> Teaser Image",
              likeCount: additionalLikeCount2,
              onLikeTap: () {
                setState(() {
                  additionalLikeCount2++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChatBubble({
    required String logoPath,
    required String platform,
    required String content,
    required int likeCount,
    required VoidCallback onLikeTap,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 16,
          child: Image.asset(logoPath, width: 24, height: 24), // logoPath 사용
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
                  Text(
                    platform,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
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
                      GestureDetector(
                        onTap: onLikeTap,
                        child: Text(
                          '$likeCount ♥',
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black),
                        ),
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
    required VoidCallback onLikeTap,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 16,
          child: Image.asset(logoPath, width: 24, height: 24), // logoPath 사용
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
                      Text(
                        platform,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
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
                          GestureDetector(
                            onTap: onLikeTap,
                            child: Text(
                              '$likeCount ♥',
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
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

  Widget buildTextOnlyChatBubble({
    required String logoPath,
    required String platform,
    required String content,
    required int likeCount,
    required VoidCallback onLikeTap,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 16,
          child: Image.asset(logoPath, width: 24, height: 24), // logoPath 사용
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
                  Text(
                    platform,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
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
                      GestureDetector(
                        onTap: onLikeTap,
                        child: Text(
                          '$likeCount ♥',
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black),
                        ),
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
}
