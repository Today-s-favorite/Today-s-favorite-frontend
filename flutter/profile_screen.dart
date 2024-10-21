import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Like List',
      theme: ThemeData(
        primaryColor: const Color(0xFFE4E724), // 전체 테마 기본 색상 적용
      ),
      home: const MyLikeListPage(),
    );
  }
}

class MyLikeListPage extends StatelessWidget {
  const MyLikeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my page'),
        backgroundColor: const Color(0xFFE4E724), // 상단바 배경색
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // 이전 화면으로 돌아가기
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildProfileSection(),
              const SizedBox(height: 20),
              _buildLikeList(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/img/IU.png'), // 실제 이미지로 교체
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '유애나 님',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '진짜 TMI다.\nToo Much I love you.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE4E724), // 버튼 색상 변경
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('프로필 편집'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLikeList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: const Text(
            'My Like List',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black, // 제목 색상 변경
            ),
          ),
        ),
        const SizedBox(height: 16),
        _buildLikeItem(Icons.video_library, '[IU TV] 이븐하게 미국 조식 먹어 봄🥰',
            'https://www.youtube.com/watch?v=h-M2OeuyZmg&t=4s'),
        _buildLikeItem(Icons.article, '아이유, 필승의 셔츠룩…침대서 나른+청순 분위기 [화보]',
            'https://sports.donga.com/article/all/20240927/130114256/1'),
        _buildLikeItem(Icons.photo, '#Gucci Cruise 2024 경복궁', ''),
        _buildLikeItem(Icons.article, '하이트진로, 아이유와 ‘2024 이슬라이브 페스티벌’ 개최',
            'https://www.etoday.co.kr/news/view/2385915'),
        _buildLikeItem(
            Icons.video_library,
            "IU '바이, 썸머 (Bye summer)' Live Clip (2024 IU HEREH WORLD TOUR CONCERT ENCORE : THE WINNING)",
            'https://www.youtube.com/watch?v=pDvBiB1waBk'),
        _buildLikeItem(Icons.photo, '##strawberymoon 🍓🌝',
            'https://www.youtube.com/watch?v=sqgxcCjD04ss'),
        _buildLikeItem(Icons.chat, "#아이유 ‘시선 싹쓸이하는 귀여움~’ ",
            'https://m.entertain.naver.com/photo/article/609/0000002582?cid=845617'),
        _buildLikeItem(Icons.article, "가수 '아이유' 일본  오사카 단독 콘서트 성료",
            'https://www.edaily.co.kr/news/read?newsId=01125046638922704&mediaCodeNo=258'),
        _buildLikeItem(Icons.article, '아이유 美 할아버지 팬, 성덕 됐다…“꿈만 같아”',
            'https://www.sportsworldi.com/newsView/20240801516026'),
        _buildLikeItem(
            Icons.photo,
            '#아이유 10주년 #콘서트 <dlwlrma.> Official MD 사전예약 판매 안내 ',
            'http://cafe.daum.net/IU/NDuY/361'),
      ],
    );
  }

  Widget _buildLikeItem(IconData icon, String title, String url) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFFE4E724), // 테두리 색상
            width: 1.5,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ListTile(
          leading:
              Icon(icon, color: const Color(0xFFE4E724), size: 30), // 아이콘 색상
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 20),
        ),
      ),
    );
  }
}
