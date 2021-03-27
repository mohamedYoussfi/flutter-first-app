import 'package:flutter/material.dart';
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    print("Widget render .............");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter Value => ${counter}",style: Theme.of(context).textTheme.bodyText2,
            ),


          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: (){
              setState(() {
                --counter;
              });
            },child: Icon(Icons.remove),
          ),
          SizedBox(width: 20,),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: (){
              setState(() {
                ++counter;
              });
            },child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}