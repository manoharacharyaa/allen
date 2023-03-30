import 'package:allen/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Allen'),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          //virtual-assistant picture
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/virtualAssistant.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin:
                const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Pallete.borderColor),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Good Morning, what task can I do for you?',
                style: const TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 25,
                  fontFamily: 'Cera Pro',
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10, left: 24),
            child: const Text(
              'Here are a few features',
              style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: [
              
            ],
          ),
        ],
      ),
    );
  }
}
