import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:untitled2/Api_inteferface.dart';
import 'package:untitled2/counter.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final count=Count();
  @override
  void initState() {
    ApiInterface(Client()).getdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Homee'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${count.count}'),
            ElevatedButton(onPressed: (){
              count.increment();
              setState(() {

              });
            },
                child: Text(''
                    'Count'))
          ],
        ),
      ),
    );
  }
}


