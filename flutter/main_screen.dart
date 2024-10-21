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
    // Example data, replace with data from AWS API
    final List<Post> posts = [
      Post(
        imageUrl:
            'https://raw.githubusercontent.com/Today-s-favorite/Today-s-favorite-frontend/refs/heads/main/test_photo/20NN1019/2021-10-19-twitter/(1)photo.png',
        imageHeight: 100,
        text:
            'IU Digital Single \n <strawberry moon> MV 📽  \n\n #아이유 #IU \n #strawberry_moon \n #자정에_뜨는_아이유의_딸기달 \n #strawberrymoonWithIU',
        likeCount: 100, // 기본값을 100으로 설정
      ),
      Post(
        imageUrl:
            'https://raw.githubusercontent.com/Today-s-favorite/Today-s-favorite-frontend/refs/heads/main/test_photo/20NN1019/2018-10-19-twitter/(4)photo.png',
        imageHeight: 100,
        text:
            "[IU TV] '#삐삐(#BBIBBI)' M/V Making \n\n #IU YouTube Channel ▶▶▶ \n\n #아이유",
        likeCount: 84, // 기본값을 100으로 설정
      ),
      Post(
        imageUrl:
            'https://raw.githubusercontent.com/Today-s-favorite/Today-s-favorite-frontend/refs/heads/main/test_photo/20NN1019/2020-10-19-twitter/(2)photo.png',
        imageHeight: 140,
        text: '생명력을 키우는 물 \n 제주삼다수로 \n 우리 몸에도 촉촉함을 \n 선사해보는 건 어떨까요?😊',
        likeCount: 77, // 기본값을 100으로 설정
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
            // Search Bar
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

            // Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            const SizedBox(height: 10),

            // "Today Hot" section
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

            // Cards for content with border
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
      color: const Color.fromRGBO(236, 238, 104, 1),
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
                  child: Image.network(
                    widget.post.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.post.text,
                style: const TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
          // Align the like button and count to the bottom-right corner
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.post.likeCount.toString(),
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
                    onPressed: () {
                      setState(() {
                        widget.post.likeCount++;
                      });
                    },
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
  final String imageUrl;
  final double imageHeight;
  final String text;
  int likeCount;

  Post({
    required this.imageUrl,
    required this.imageHeight,
    required this.text,
    required this.likeCount,
  });
}
