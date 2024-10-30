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
  int naverLikeCount = 20;
  int youtubeLikeCount = 20;

  @override
  Widget build(BuildContext context) {
    String currentDate =
        DateFormat('yyyy년 M월 d일').format(DateTime(2024, 10, 21));

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
              buildChatBubble(
                imagePath: 'assets/img/naver_logo.png',
                platform: 'Naver',
                content:
                    "세븐틴의 미니 12집 ‘SPILL THE FEELS’는 첫 주에 316만 장 이상 판매되며 올해 K팝 앨범 중 초동 판매량 최고 기록을 세웠습니다. \n이는 올해 발매된 K팝 앨범 중 유일하게 첫 주에 300만 장 이상 판매된 음반으로, 세븐틴의 음반 파워를 입증했습니다. \n세븐틴은 미국 5개 도시와 일본 돔 투어를 포함한 월드 투어로 팬들과 만날 예정입니다.",
                likeCount: naverLikeCount,
                onLikePressed: () {
                  setState(() {
                    naverLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubble(
                imagePath: 'assets/img/naver_logo.png',
                platform: 'Naver',
                content:
                    "그룹 세븐틴의 새 앨범 ‘SPILL THE FEELS’는 초동 판매량 316만 장으로 올해 K-팝 앨범 중 최고 기록을 세웠습니다.\n소속사에 따르면 이는 올해 발매된 K-팝 앨범 중 가장 높은 판매량입니다.\n오늘 수록곡 ‘Eyes on You’ 뮤직비디오도 공개됐습니다.",
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
                thumbnailPath: 'assets/img/youtube(1).png',
                platform: 'Youtube',
                videoTitle: '#LOVE_MONEY_FAME ♥',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/youtube.png',
                thumbnailPath: 'assets/img/youtube(2).png',
                platform: 'Youtube',
                videoTitle:
                    '#LOVE_MONEY_FAME 🌹 with #문상민 #MoonSangMin #승관 #SEUNGKWAN #SEVENTEEN #세븐틴 #SPILL_THE_FEELS',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/youtube.png',
                thumbnailPath: 'assets/img/youtube(3).png',
                platform: 'Youtube',
                videoTitle:
                    '#LOVE_MONEY_FAME 🌹 with #YUYANG #MAOXIAOTONG #YANGDI #PANWEIBO #준#JUN#SEVENTEEN#세븐틴#SPILL_THE_FEELS',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/youtube.png',
                thumbnailPath: 'assets/img/youtube(4).png',
                platform: 'Youtube',
                videoTitle:
                    '#LOVE_MONEY_FAME 🌹 with #버논 #VERNON #디노 #DINO #SEVENTEEN #세븐틴 #SPILL_THE_FEELS',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/youtube.png',
                thumbnailPath: 'assets/img/youtube(5).png',
                platform: 'Youtube',
                videoTitle:
                    '#LOVE_MONEY_FAME 🌹 with #정한 #JEONGHAN #SEVENTEEN #세븐틴 #SPILL_THE_FEELS',
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
                  GestureDetector(
                    onTap: () async {
                      const url = 'https://www.osen.co.kr/article/G1112375904';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                    child: Text(
                      content,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black54),
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () async {
                    const url =
                        'https://youtu.be/fsigYmDuB9Y?si=OsHuiE4sJxJmqTCJ';
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    child: Image.asset(thumbnailPath,
                        width: double.infinity, height: 250, fit: BoxFit.cover),
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
