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
      home: svtChatScreen2(),
    );
  }
}

class svtChatScreen2 extends StatefulWidget {
  const svtChatScreen2({super.key});

  @override
  _svtChatScreen2State createState() => _svtChatScreen2State();
}

class _svtChatScreen2State extends State<svtChatScreen2> {
  int likeCount1 = 80;
  int likeCount2 = 93;
  int likeCount3 = 253;
  int likeCount4 = 80;
  int likeCount5 = 102;
  int likeCount6 = 153;
  int likeCount7 = 123;
  int likeCount8 = 95;
  int likeCount9 = 139;
  int likeCount10 = 127;
  int likeCount11 = 98;

  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('yyNN년 M월 d일').format(DateTime(20, 10, 29));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA6B7D8),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 30,
      ),
      backgroundColor: const Color(0xFFA6B7D8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Container(
                constraints: const BoxConstraints(maxWidth: 150),
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFE4E9F3),
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
                likeCount: likeCount1,
                onLikePressed: () {
                  setState(() {
                    likeCount1++;
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
                likeCount: likeCount2,
                onLikePressed: () {
                  setState(() {
                    likeCount2++;
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
                likeCount: likeCount3,
                onLikePressed: () {
                  setState(() {
                    likeCount3++;
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
                likeCount: likeCount4,
                onLikePressed: () {
                  setState(() {
                    likeCount4++;
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
                likeCount: likeCount5,
                onLikePressed: () {
                  setState(() {
                    likeCount5++;
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
                likeCount: likeCount6,
                onLikePressed: () {
                  setState(() {
                    likeCount6++;
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
                likeCount: likeCount7,
                onLikePressed: () {
                  setState(() {
                    likeCount7++;
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
                likeCount: likeCount8,
                onLikePressed: () {
                  setState(() {
                    likeCount8++;
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
                likeCount: likeCount9,
                onLikePressed: () {
                  setState(() {
                    likeCount9++;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildChatBubbleWithImage(
                logoPath: 'assets/img/twitter.png',
                thumbnailPath: 'assets/img/20.10.29(4) X.png',
                platform: 'Twitter',
                videoTitle: '[17\'S 쿱스] 너무 영광스러운 자리였습니다',
                likeCount: likeCount10,
                onLikePressed: () {
                  setState(() {
                    likeCount10++;
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
                likeCount: likeCount11,
                onLikePressed: () {
                  setState(() {
                    likeCount11++;
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
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          radius: 16,
          child: Image.asset(logoPath, width: 24, height: 24),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Card(
            color: Colors.white, // 카드 배경색을 흰색으로 설정
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
