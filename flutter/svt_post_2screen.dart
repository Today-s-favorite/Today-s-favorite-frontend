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
                thumbnailPath: 'assets/img/24.10.29(1) X.png',
                platform: 'Twitter',
                videoTitle:
                    '\'LOVE, MONEY, FAME (feat. DJ Khaled)\' Photo Sketch\n\n▶️https://weverse.io/seventeen/media/4-183671670\n\n#SEVENTEEN #세븐틴\n#SPILL_THE_FEELS\n#LOVE_MONEY_FAME',
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
                thumbnailPath: 'assets/img/24.10.29(2) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[NEWS] Tomorrow on @GMA, catch SEVENTEEN performing the English version of “LOVE, MONEY, FAME (feat. DJ Khaled)" LIVE from Times Square! Don\'t miss it!\n\n#SEVENTEEN #세븐틴\n#SPILL_THE_FEELS\n#LOVE_MONEY_FAME\n#GMA #GoodMorningAmerica',
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
                thumbnailPath: 'assets/img/22.10.29 X.png',
                platform: 'Twitter',
                videoTitle:
                    '[GOING SEVENTEEN 2020] EP.44 TTT #1 (Hyperrealism Ver.) 10 Million Views🍻\n▶️ http://youtu.be/OjbjlNbQqLc\n\n#SEVENTEEN #세븐틴\n#GOING_SVT\n#GOSE_TTT_10MViews\n#고잉세븐틴_티티티_천만뷰',
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
                thumbnailPath: 'assets/img/21.10.29(1) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[17\'S] #뮤직뱅크 1위까지 해냈다! 세븐틴🏆🏆\n\n#Rockwithyou 활동 무대는\n캐럿들 응원으로 더 에너지 넘친다🔥 \n\n#세븐틴_뮤직뱅크_1위_축하해👏\n#Rockwithyou2ndWin',
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
                thumbnailPath: 'assets/img/21.10.29(2) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[SEVENTEEN\'s SNAPSHOOT] EP.10 연습실 노래방 (Practice Studio Karaoke)\n\n▶ https://youtu.be/v5PrAprWRac\n\n#세븐틴 #SEVENTEEN\n#SVT_SNAPSHOOT',
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
                thumbnailPath: 'assets/img/21.10.29(3) X.png',
                platform: 'Twitter',
                videoTitle:
                    'SEVENTEEN (세븐틴) \'Rock with you\' Official MV (Choreography Version)\n\n▶ https://youtu.be/EhrFmgeqo6k\n\n#세븐틴 #SEVENTEEN\n#Attacca\n#Rockwithyou\n#SVT_Rockwithyou',
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
                thumbnailPath: 'assets/img/21.10.29(4) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[VIDEO] #뮤직뱅크\n\nRock with you - 세븐틴 (SEVENTEEN)\n▶ https://tv.naver.com/v/23242943\n\n#세븐틴 #SEVENTEEN\n#Attacca\n#Rockwithyou\n#SVT_Rockwithyou',
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
                thumbnailPath: 'assets/img/20.10.29(1) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[17\'S] 👤세븐틴이가 #엠카운트다운 에서 1위 트로피를 가져왔단다. 캐럿들이 준게 분명하다👤\n\n모두 응원해 준 캐럿들 덕분이에요! 정말 감사합니다💖💙 캐럿들이 있어 오늘도 반짝반짝 빛나는 세봉이들✨\n\n#세븐틴_엠카운트다운_1위_축하해🎉\n#HOME_RUN2ndWin🏆',
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
                thumbnailPath: 'assets/img/20.10.29(2) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[GOING MOMENT] 번지 점프?! 그까짓 것 세븐틴은 하,하면 해...! (덜덜)\n\n▶ https://youtu.be/MBNK0u3sCaI\n\n#세븐틴 #SEVENTEEN\n#GOING_SVT',
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
                thumbnailPath: 'assets/img/20.10.29(3) X.png',
                platform: 'Twitter',
                videoTitle:
                    '[VIDEO] #엠카운트다운\n\n\'1위\' ♨짜릿하게 터진 ‘세븐틴’의 ‘HOME;RUN’ 무대▶️ https://tv.naver.com/v/16459428\n\n#SEVENTEEN #세븐틴\n#Semicolon #세미콜론\n#HOME_RUN',
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
                thumbnailPath: 'assets/img/20.10.29(4) X.png',
                platform: 'Twitter',
                videoTitle: '[17\'S 쿱스] 너무 영광스러운 자리였습니다',
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
                thumbnailPath: 'assets/img/19.10.29 X.png',
                platform: 'Twitter',
                videoTitle:
                    '[VIDEO] #뮤직뱅크\n\n[K-Choreo] 세븐틴 직캠 독 Fear (SEVENTEEN Choreography) l @ MusicBank 191004\n▶ https://tv.naver.com/v/10631249\n\n[K-Choreo] 세븐틴 직캠 스냅슛 Snapshoot (SEVENTEEN Choreography) l @ MusicBank 191004\n▶ https://tv.naver.com/v/10631096\n\n#세븐틴 #SEVENTEEN',
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
                thumbnailPath: 'assets/img/17.10.29 X.png',
                platform: 'Twitter',
                videoTitle:
                    'SEVENTEEN 2ND ALBUM \'TEEN, AGE\' ALBUM PACKAGE PREVIEW\n#SEVENTEEN #세븐틴 #TEEN_AGE #20171106_6PM',
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
                thumbnailPath: 'assets/img/15.10.29 X.png',
                platform: 'Twitter',
                videoTitle:
                    '[Doogi PD] 지인이 사진을 보내줬다. 쿱스가   생각나서 쿱스에게 보내주었다. 혼이 났다.\n#그래도_형인데 #솔직히_닮았지 #꽃미남',
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
