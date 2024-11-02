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
      home: svtChatScreen1(),
    );
  }
}

class svtChatScreen1 extends StatefulWidget {
  const svtChatScreen1({super.key});

  @override
  _svtChatScreen1State createState() => _svtChatScreen1State();
}

class _svtChatScreen1State extends State<svtChatScreen1> {
  int naverLikeCount = 20;
  int youtubeLikeCount = 20;

  @override
  Widget build(BuildContext context) {
    String currentDate =
        DateFormat('yyyy년 M월 d일').format(DateTime(2024, 10, 29));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7D3D2),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 30,
      ),
      backgroundColor: const Color(0xFFF7D3D2),
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
                  color: const Color(0xFFFDF2F1), // 배경색 변경
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
                    "플레디스엔터테인먼트는 10월 29일 세븐틴 '엠카운트다운' 사전 녹화에서 발생한 방청객 밀집 상황에 대해 휴식 공간 제공 등 현장 조치를 했다고 밝혔다. \n일부 팬이 과밀로 인해 어지러움을 호소하며 이송되는 일이 발생했다. \n세븐틴은 현재 월드투어 중이며, 미국 텍사스와 오클랜드, 로스앤젤레스 공연을 앞두고 있다.",
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
                videoTitle: 'Wow🫢',
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
                thumbnailPath: 'assets/img/youtube(2).png',
                platform: 'Youtube',
                videoTitle:
                    '#LOVE_MONEY_FAME at 1,000ft up Empire State Building #SEVENTEEN #세븐틴 #SPILL_THE_FEELS',
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
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
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
                      style: const TextStyle(fontSize: 14, color: Colors.black),
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
            color: Colors.white,
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
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        videoTitle,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
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
