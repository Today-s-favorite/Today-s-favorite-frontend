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
                text: "SVT",
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
                  child: const Text("오늘의 SVT",
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
