import 'package:flutter/material.dart';

class Mychuchvara extends StatefulWidget {
  const Mychuchvara({super.key});

  @override
  State<Mychuchvara> createState() => _MychuchvaraState();
}

class _MychuchvaraState extends State<Mychuchvara> {
  bool val1 = false;
  bool val2=false;
  bool val3=false;
  int cost=0;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('image/chuchvara.jpg'),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: val1,
                onChanged: (hero1) {
                  setState(() {
                    val1=hero1!;
                    if(val1){
                      cost+=15;
                    }
                    else cost-=15;
                  });
                }),
                Text('Bir kosa')
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
                      cost+=15;
                    }
                    else cost-=15;
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
                      cost+=2;
                    }
                    else cost-=2;
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
