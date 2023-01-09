import 'package:flutter/material.dart';

class Mychicken extends StatefulWidget {
  const Mychicken({super.key});

  @override
  State<Mychicken> createState() => _MychickenState();
}

class _MychickenState extends State<Mychicken> {
  bool val1 = false;
  bool val2=false;
  bool val3=false;
  int cost=0;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('image/chicken.jpg'),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: val1,
                onChanged: (hero1) {
                  setState(() {
                    val1=hero1!;
                    if(val1){
                      cost+=32;
                    }
                    else cost-=32;
                  });
                }),
                Text('Bir kilo')
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
                      cost+=32;
                    }
                    else cost-=32;
                  });
                }),
                Text('Ikki kilo')
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
                      cost+=10;
                    }
                    else cost-=10;
                  });
                }),
                Text('Pepsi')
          ],
        ),
        SizedBox(height: 30,),
        Text('Cost: $cost ming so`m',style: TextStyle(fontSize: 20),)
      ],
    );
  }
}
