
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_age/screens/login/login.dart';
import 'package:new_age/scripts/slider_animation.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Future<void> signOut() async {
    setState(() {
      FirebaseAuth.instance.signOut();
      Navigator.push(context, FadeRoute(page: const LoginScreen()));
    });
  }
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: signOut, child: Icon(Icons.exit_to_app),),
    );
  }
}

Widget bottomDesc = Container();
