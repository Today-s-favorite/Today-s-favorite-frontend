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
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/24.10.21 X.png',
                platform: 'Twitter',
                videoTitle:
                    '[TEA 8] 캐럿들의 요즘 고민은 무엇인가요? | 버논이와 티 타임🍵\n\n▶️ https://youtu.be/aCk4rCnhyGE\n\n#THE8 #디에잇\n#VERNON #버논\n#SEVENTEEN #세븐틴\n #SPILL_THE_FEELS\n#TEA8 #티에잇타임',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/23.10.21(1) X.jpg',
                platform: 'Twitter',
                videoTitle: '[17\'S JUN] 재미있는 여정',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/23.10.21(2) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[VIDEO] #놀라운토요일\n\n[예고] 정체 불명 천국(?) 속 도레미와 존재 자체가 천국인 세븐틴이 떴다!🥰 민규 X 승관 X 디노💗\n▶️ https://tv.naver.com/v/41693331\n\n#MINGYU #민규\n#SEUNGKWAN #승관\n#DINO #디노\n#SEVENTEEN #세븐틴',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/22.10.21(1) X.png',
                platform: 'Twitter',
                videoTitle:
                    '\'TOUR-ING : SEVENTEEN WORLD TOUR [BE THE SUN]\' VOD Teaser #1\n\n▶ https://youtu.be/FdSWlfgfynM\n\n#SEVENTEEN #세븐틴\n#SVT_WORLDTOUR_BETHESUN\n#BETHESUN #TOURING',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/22.10.21(2) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[INSIDE SEVENTEEN] SEVENTEEN WORLD TOUR [BE THE SUN] NORTH AMERICA BEHIND #1\n\n▶https://youtu.be/DLaURAkoqUg\n\n#SEVENTEEN #세븐틴\n#INSIDE_SVT',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/21.10.21 X.png',
                platform: 'Twitter',
                videoTitle:
                    '[17\’S] 우리 뿌가 또 해냈다‼️\n11인 출연권으로 세븐틴 문특 등장🎉\n문특과 세븐틴 케미는 말해 뭐해..💗\n\n#다음_주_문특도_기대기대😉',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/20.10.21 X.png',
                platform: 'Twitter',
                videoTitle: '[17\'S 우지] HOME;RUN⚾️',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/19.10.21(1) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[17\'S] 핵인싸 세봉이들의 유쾌한 노래방탈출❗ 노래는 당연🎤 어떤 미션도 척척해내는 세봉이들🤟 도대체 못하는 게 뭐지🤔\n\n#캐럿들은_내적_땐스_땐스🕺\n#세봉이들_덕분에_귀_호강은_덤🥰',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/18.10.21(1) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[17\'S 쿱스] 추운 날씨에도 함께해준 우리 캐럿들을 비롯해 많은 케이팝 팬 여러분들 덕분에 큰 감동 받았던 무대였습니다. 감사합니다!',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/18.10.21(2) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[17\'S 민규] 짜잔~🤗 오늘은 특별히 UHD특집으로 진행된 인기가요❤️ 고퀄로 보는 밍엠씨라 더 #멋진가요?👀✨ 꼬꼬마 시절부터 러블리했던 밍구💕 사랑둥이 세븐틴 민규가 되어 캐럿들 심장 루팡🎩\n#밍구_몸엔_물보다_사랑이_많아 🙆‍♂️\n#밍랑둥 😘',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/instagram.png',
                thumbnailPath: 'assets/img/24.10.21 Ins.png',
                platform: 'Instagram',
                videoTitle:
                    'SEVENTEEN (세븐틴) \'Eyes on you\' Official MV\n\n#SEVENTEEN #세븐틴 #SPII_THE_FEELS #Eyes_on_you',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/instagram.png',
                thumbnailPath: 'assets/img/23.10.21 Ins.png',
                platform: 'Instagram',
                videoTitle:
                    'SEVENTEEN (세븐틴) \'음악의 신\' Official Teaser 2\n\n2023.10.23 6PM (KST)\n2023.10.23 5AM (ET)\n\n#SEVENTEEN #세븐틴 #SEVENTEENTH_HEAVEN #음악의 신 #GodOfMusic',
                likeCount: youtubeLikeCount,
                onLikePressed: () {
                  setState(() {
                    youtubeLikeCount++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/instagram.png',
                thumbnailPath: 'assets/img/21.10.21 Ins.png',
                platform: 'Instagram',
                videoTitle:
                    'SEVENTEEN (세븐틴) \'Rock with you\' Official Teaser 2\n\nhttps://youtu.be/i75GKB102Fk\n\n2021.10.22 1PM (KST)\n2021.10.22 0AM (ET)',
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
