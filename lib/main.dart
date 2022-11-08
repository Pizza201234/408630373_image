import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '408630373_image',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Not a rick roll app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

var imgurl=["https://truth.bahamut.com.tw/s01/202110/2a0fb78c38ddc897599ac17de9c3d2b5.JPG",
  "https://truth.bahamut.com.tw/s01/202110/370e05e4e184cb03ffae9658b55fb366.JPG",
  "https://truth.bahamut.com.tw/s01/202110/7e45a9848b7151fa51b12e1b2a62f563.JPG",
  "https://images.squarespace-cdn.com/content/v1/5b788d28697a98e17a6d4c7a/b83f0eab-7dd6-4e9b-83a1-13139ac2a03b/rickroll+cropped.png"
  ,];



class _MyHomePageState extends State<MyHomePage> {
    int x=0;

  void _inc() {
    setState(() {
      if(x==imgurl.length-1)
        {
          x=0;
        }
      else
        x++;
    });

  }
    void _dec() {
      setState(() {
        if(x==0)
          {
            x=imgurl.length-1;
          }
        else
          x--;
      });

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(imgurl[x]),
            ButtonBar(
                alignment: MainAxisAlignment.center,
                children:[
                  ElevatedButton(
                    onPressed: () {
                      _dec();
                      final snackBar = SnackBar(
                        content: const Text('Yay! A SnackBar!'),
                        action: SnackBarAction(
                          label: '???',
                          onPressed: () {
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text('Pre'),
                  )
                  ,
                  ElevatedButton(
                    onPressed: () {
                      _inc();
                      final snackBar = SnackBar(
                        content: const Text('Yay! A SnackBar!'),
                        action: SnackBarAction(
                          label: '???',
                          onPressed: () {
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text('Next'),
                  )

                ]
            )
            ,
          ],
        ),
      ),

    );
  }
}
