import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Portfolio",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600
          ),
        ),
        actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.menu, color: Colors.black,size: 34,),
            ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 130,
              backgroundImage: AssetImage('assets/images/person.jpg'),
            ),
            const SizedBox(height: 30),
            Container(
              width: 312,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child:  Center(
                child: Text(
                  "Hi, I am Shaiq,",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#21243D')
                  ),
                ),
              ),
            ),
            Container(
              width: 250,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child:  Center(
                child: Text(
                  "Software Engineer",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#21243D')
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 350,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                style: TextStyle(
                  fontSize: 16,
                  color: HexColor('#21243D')
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.redAccent.withOpacity(0.8),
                minimumSize: Size(208, 47),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
                onPressed: (){}, child: Text(
              "Download Resume",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
            ))
          ],
        ),
      ),
    );
  }
}
