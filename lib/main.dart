import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const EventHubApp());
}

class EventHubApp extends StatelessWidget {
  const EventHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    );

    // 3 second baad Home Screen par jayega
    Future.delayed(const Duration(seconds: 56), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF0FF),
              Color(0xFFEBD2FF),
              Color(0xFF8E24D8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -70,
              left: -50,
              child: CircleAvatar(
                radius: 130,
                backgroundColor: Color(0xFF9C27B0),
              ),
            ),
            Positioned(
              top: 100,
              right: -50,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Color(0xFFD8A7F5),
              ),
            ),
            Column(
              children: [
                 SizedBox(height: 120),
                 Icon(
                  Icons.event_available,
                  size: 115,
                  color: Color(0xFF4A078E),
                ),
                 SizedBox(height: 15),
                Text(
                  'Event Hub',
                  style: TextStyle(
                    fontSize: 50, // <-- Yahan theek kiya
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A078E),
                  ),
                ),
                 SizedBox(height: 8),
                 Text(
                  'Make Every Moment Special',
                  style: TextStyle(
                    fontSize: 19,
                    color: Color(0xFF32105C),
                  ),
                ),
                 SizedBox(height: 55),
                 Text(
                  'Plan · Book · Celebrate',
                  style: TextStyle(
                    fontSize: 27,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF6710A5),
                  ),
                ),
                 Spacer(),
                 Icon(
                  Icons.celebration,
                  size: 100,
                  color: Colors.white,
                ),
                 Spacer(),
                 CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 5,
                ),
                 SizedBox(height: 15),
                 Text(
                  'Loading...',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                 SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Event Hub Home")),
      body: const Center(
        child: Text("Welcome to Event Hub!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}