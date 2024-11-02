import 'package:flutter/material.dart';
import 'svt_post_1screen.dart';
import 'svt_post_2screen.dart';
import 'profile_screen.dart'; // 사용X 기능
import 'search_screen.dart'; // 사용X 기능

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
    // Example data, replace with data from AWS API
    final List<Post> posts = [
      Post(
        imageUrl: 'assets/img/youtube(5).png',
        imageHeight: 100,
        text:
            '#LOVE_MONEY_FAME 🌹 with #정한 #JEONGHAN #SEVENTEEN #세븐틴 #SPILL_THE_FEELS',
        likeCount: 20,
      ),
      Post(
        imageUrl: 'assets/img/youtube(2).png',
        imageHeight: 100,
        text:
            "#LOVE_MONEY_FAME at 1,000ft up Empire State Building #SEVENTEEN #세븐틴 #SPILL_THE_FEELS",
        likeCount: 15,
      ),
      Post(
        imageUrl: 'assets/img/22.10.29 X.png',
        imageHeight: 140,
        text:
            '[GOING SEVENTEEN 2020] EP.44 TTT #1 (Hyperrealism Ver.) 10 Million Views🍻\n▶️ http://youtu.be/OjbjlNbQqLc\n\n#SEVENTEEN #세븐틴\n#GOING_SVT\n#GOSE_TTT_10MViews\n#고잉세븐틴_티티티_천만뷰',
        likeCount: 15,
      ),
    ];

    // Get screen width
    final double width = MediaQuery.of(context).size.width;

    // Set item width and spacing
    const double itemWidth = 140.0;
    const double crossAxisSpacing = 5.0;

    // Calculate number of columns
    final int crossAxisCount = (width / (itemWidth + crossAxisSpacing)).floor();

    return Scaffold(
      appBar: AppBar(
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
                text: "SVT",
                style: TextStyle(
                  color: Color(0xFF92A8D1),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.search_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.home_outlined), // 집 모양 아이콘
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const MyLikeListPage(), // MyLikeListPage로 이동
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
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF7CAC9),
                      fixedSize: const Size(175, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const svtChatScreen1()),
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
                      backgroundColor: const Color(0xFF92A8D1),
                      fixedSize: const Size(175, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const svtChatScreen2()),
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

class PostCard extends StatefulWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // 카드 모서리 둥글게
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFF7CAC9), // 첫 번째 색상
              Color(0xFF92A8D1), // 두 번째 색상
            ],
            begin: Alignment.centerLeft, // 그라데이션 시작 위치
            end: Alignment.centerRight, // 그라데이션 끝 위치
          ),
          borderRadius: BorderRadius.circular(12), // 카드와 같은 모서리 둥글게
        ),
        child: Column(
          children: [
            // Row for the logo and SNS name
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  // Logo (replace with actual path to the local image in the assets folder)
                  Image.asset(
                    'assets/img/twitter.png',
                    height: 10, // Adjust height as needed
                  ),
                  const SizedBox(width: 5),
                  const Expanded(
                    // Expanded 사용
                    child: Text(
                      "Twitter", // Replace with dynamic platform name if necessary
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis, // 텍스트가 넘치면 "..." 처리
                    ),
                  ),
                ],
              ),
            ),
            if (widget.post.imageUrl.isNotEmpty) ...[
              Container(
                padding: const EdgeInsets.all(7.0),
                child: SizedBox(
                  height: widget.post.imageHeight,
                  child: Center(
                    child: Image.asset(
                      widget.post.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.post.text,
                style: const TextStyle(fontSize: 12),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 16,
                ),
                const SizedBox(width: 5),
                Text(
                  widget.post.likeCount.toString(),
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Post {
  final String imageUrl;
  final double imageHeight;
  final String text;
  final int likeCount;

  Post({
    required this.imageUrl,
    required this.imageHeight,
    required this.text,
    required this.likeCount,
  });
}
