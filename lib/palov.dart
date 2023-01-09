import 'package:flutter/material.dart';

class Mypalov extends StatefulWidget {
  const Mypalov({super.key});

  @override
  State<Mypalov> createState() => _MypalovState();
}

class _MypalovState extends State<Mypalov> {
  bool val1 = false;
  bool val2=false;
  bool val3=false;
  int cost=0;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('image/palov.jpg'),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: val1,
                onChanged: (hero1) {
                  setState(() {
                    val1=hero1!;
                    if(val1){
                      cost+=25;
                    }
                    else cost-=25;
                  });
                }),
                Text('Bir tavoq')
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
                Text('Ikki tavoq')
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
                      cost+=5;
                    }
                    else cost-=5;
                  });
                }),
                Text('Salat')
          ],
        ),
        SizedBox(height: 30,),
        Text('Cost: $cost ming so`m',style: TextStyle(fontSize: 20),)
      ],
    );
  }
}
