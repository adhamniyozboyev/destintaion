import 'package:flutter/material.dart';

class Myshorva extends StatefulWidget {
  const Myshorva({super.key});

  @override
  State<Myshorva> createState() => _MyshorvaState();
}

class _MyshorvaState extends State<Myshorva> {
  bool val1 = false;
  bool val2=false;
  bool val3=false;
  int cost=0;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('image/shorva.jpg'),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: val1,
                onChanged: (hero1) {
                  setState(() {
                    val1=hero1!;
                    if(val1){
                      cost+=5;
                    }
                    else cost-=5;
                  });
                }),
                Text('Bir Kosa')
          ],
        ),
           Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: val2,
                onChanged: (hero2) {
                  setState(() {
                    val2=hero2!;
                    if(val2){
                      cost+=25;
                    }
                    else cost-=25;
                  });
                }),
                Text('Ikki kosa')
          ],
        ),
           Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: val3,
                onChanged: (hero3) {
                  setState(() {
                    val3=hero3!;
                    if(val3){
                      cost+=3;
                    }
                    else cost-=3;
                  });
                }),
                Text('Choy')
          ],
        ),
        SizedBox(height: 30,),
        Text('Cost: $cost ming so`m',style: TextStyle(fontSize: 20),)
      ],
    );
  }
}
