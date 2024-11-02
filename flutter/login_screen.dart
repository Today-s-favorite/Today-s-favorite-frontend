import 'package:flutter/material.dart';
import 'signup_screen.dart'; // 회원가입 화면 import
import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // Scrollable 위젯으로 감싸기
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100), // 위쪽 여백 추가
                const Text(
                  '오늘의 최애',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          hintText: '아이디 입력',
                          icon: Icon(Icons.person),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: '비밀번호 입력',
                          icon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyHomePage()),
                              );
                            },
                            child: const Text('로그인'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpScreen()),
                              );
                            },
                            child: const Text('회원가입'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      const Text("소셜 계정으로 로그인"),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // 네이버 로그인 처리
                            },
                            child: Container(
                              width: 55, // 너비 설정 (크기 증가)
                              height: 55, // 높이 설정 (크기 증가)
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent, // 원의 배경을 투명하게 설정
                              ),
                              child: Image.asset(
                                'assets/img/naver.png',
                                fit: BoxFit.contain, // 이미지 비율 유지
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              // 구글 로그인 처리
                            },
                            child: SizedBox(
                              width: 40, // 너비 설정
                              height: 40, // 높이 설정
                              child: Image.asset(
                                'assets/img/google.png',
                                fit: BoxFit.contain, // 이미지 비율 유지
                              ),
                            ),
                          ),
                          const SizedBox(width: 25),
                          GestureDetector(
                            onTap: () {
                              // 카카오 로그인 처리
                            },
                            child: SizedBox(
                              width: 40, // 너비 설정
                              height: 40, // 높이 설정
                              child: Image.asset(
                                'assets/img/kakao.png',
                                fit: BoxFit.contain, // 이미지 비율 유지
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40), // 아래쪽 여백 추가
              ],
            ),
          ),
        ),
      ),
    );
  }
}
