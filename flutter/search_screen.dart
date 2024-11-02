import 'package:flutter/material.dart';
import 'svt_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> recentSearches = ['엑소 백현', '에스파 카리나', '아스트로 차은우', '태연'];
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          decoration: const InputDecoration(
            hintText: '최애 이름 검색',
            hintStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
            border: InputBorder.none,
          ),
          onChanged: (value) {
            setState(() {
              searchQuery = value.toLowerCase();
            });
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // '세븐틴'이라고 입력했을 때만 메인 페이지로 이동
              if (searchQuery == '세븐틴') {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('검색어를 확인해주세요.')),
                );
              }
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2.0),
          child: Container(
            height: 3.0,
            color: Colors.black, // 하단 강조 색상
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '최근 검색어',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: recentSearches
                    .where(
                        (search) => search.toLowerCase().contains(searchQuery))
                    .map((search) => ListTile(title: Text(search)))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
