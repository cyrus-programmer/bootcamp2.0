import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateFulPage extends StatefulWidget {
  const StateFulPage({super.key});

  @override
  State<StateFulPage> createState() => _StateFulPageState();
}

class _StateFulPageState extends State<StateFulPage> {
  List<String> names = [
    'Shaiq',
    'Ali',
    'Huzaifa',
    'Umer'
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    print("state updated");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Names",
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600
          ),
        ),

      ),
      body: Center(
        child: Text(
          names[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.blueGrey
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: (){
          if(index+1 == names.length){
            index = 0;
          }else{
            index += 1;
          }

          setState(() {

          });
          print(index);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
