import 'package:flutter/material.dart';
import 'post_1screen.dart';
import 'post_2screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Post> posts = [
      Post(
        platform: 'Twitter',
        logoUrl: 'assets/img/twitter.png', // Added logoUrl
        imageUrl: 'assets/img/IU_X(2).png',
        imageHeight: 150,
        text: '아이유 미니 5집 선공개 곡 \n<Love poem> Teaser Image',
        likeCount: 20,
      ),
      Post(
        platform: 'Instagram',
        logoUrl: 'assets/img/instagram.png', // Added logoUrl
        imageUrl: 'assets/img/IU_Ins.png',
        imageHeight: 150,
        text: "♥제주삼다수 X 아이유\n 11월 달력 大공개!♥",
        likeCount: 15,
      ),
      Post(
        platform: 'Naver',
        logoUrl: 'assets/img/naver_logo.png', // Added logoUrl
        text:
            '\n\n\“1위 아이유·2위 이승기·3위 김민석\”\n\n랭키파이가 10월 4주차 발라드 가수 트렌드지수를 발표하며, 아이유가 1위, 이승기가 2위, 김민석이 3위에 올랐다.\n트렌드지수는 구글 검색량과 네이버 검색 데이터를 종합하여 산출되며, 성별 선호도에서 아이유는 여성(62%)에게 더 많은 인기를 끌었다.\n연령대별 선호도에서는 20대가 아이유를 가장 많이 선호(30%)하며, 각 가수의 인기 경향이 연령대별로 뚜렷하게 구분되었다.',
        likeCount: 15,
      ),
    ];

    final double width = MediaQuery.of(context).size.width;
    const double itemWidth = 140.0;
    const double crossAxisSpacing = 5.0;
    final int crossAxisCount = (width / (itemWidth + crossAxisSpacing)).floor();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE4E724),
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "오늘의 ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w900),
              ),
              TextSpan(
                text: "IU",
                style: TextStyle(
                  color: Color(0xFFC7B1D9),
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Text(
                  '마이페이지',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyLikeListPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              width: 800,
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '차애 소식 보러가기',
                  hintStyle: const TextStyle(fontSize: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: Color(0xFFC7B1D9),
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: Color(0xFFC7B1D9),
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: Color(0xFFC7B1D9),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE4E724),
                      fixedSize: const Size(175, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen1()),
                      );
                    },
                    child: const Text("오늘의 IU",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE4E724),
                      fixedSize: const Size(175, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen2()),
                      );
                    },
                    child: const Text("N년전 오늘",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Today Hot',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFC7B1D9),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: crossAxisSpacing,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 0.60,
                  ),
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return PostCard(post: post);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(236, 238, 104, 1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Image.asset(
                  post.logoUrl, // Use logoUrl here
                  height: 20, // Adjusted height for logo
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    post.platform,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          if (post.imageUrl.isNotEmpty) ...[
            Container(
              padding: const EdgeInsets.all(7.0),
              child: SizedBox(
                height: post.imageHeight,
                child: Center(
                  child: Image.asset(
                    post.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              post.text,
              style: const TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    post.likeCount.toString(),
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  IconButton(
                    icon: const Text(
                      '❤️',
                      style: TextStyle(fontSize: 12),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Post {
  final String platform;
  final String logoUrl; // New logoUrl property
  final String imageUrl;
  final double imageHeight;
  final String text;
  final int likeCount;

  Post({
    required this.platform,
    this.logoUrl = '', // Default value for logoUrl
    this.imageUrl = '',
    this.imageHeight = 0,
    required this.text,
    required this.likeCount,
  });
}
