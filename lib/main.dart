import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

// AudioPlayer _audioPlayer = AudioPlayer();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // void init() {
  //   super.initState();
  //   _audioPlayer.setAsset("assets/jumpingaudio.mp3");
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   _audioPlayer.dispose();
  // }
  //
  // Function player = () {
  //   _audioPlayer.play();
  //   return 1;
  // };
  //
  // Map<int, Widget> output = {1, const AfterSplash()} as Map<int, Widget>;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/jumping.gif'),
      nextScreen: const AfterSplash(),
      backgroundColor: const Color(0xFFEDE4D5),
      splashTransition: SplashTransition.fadeTransition,
    );

    //   CustomSplash(
    //     imagePath: "assets/jumping.gif",
    //     customFunction: player,
    //     home: const AfterSplash(),
    //   animationEffect: 'zoom-out',
    //   backGroundColor: const Color(0xFFEDE4D5),
    //   outputAndHome: output,
    //   type: CustomSplashType.BackgroundProcess,
    //
    // );
    //   SplashScreen(
    //     seconds: 3,
    //     navigateAfterSeconds: AfterSplash(),
    //     image: Image.asset('assets/spash.gif',
    //     fit: BoxFit.contain,
    //       height: double.infinity,
    //       width: double.infinity,),
    //     backgroundColor: Colors.black);
  }
}

class AfterSplash extends StatefulWidget {
  const AfterSplash({Key? key}) : super(key: key);

  @override
  State<AfterSplash> createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFEDE4D5),
      body: Center(
        child: Text(
          "Welcome :)",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.green),
        ),
      ),
    );
  }
}
