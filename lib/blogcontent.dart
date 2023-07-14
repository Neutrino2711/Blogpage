import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({this.username,this.url,this.heading,this.content});

  final String? url,username,content,heading;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
                body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                        
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0),
                      // Icon(Icons.arrow_back_ios_new_outlined),
                      TextButton(
                        child: Icon(Icons.arrow_back_ios_new,
                        color: Colors.black26,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  url!),
                              fit: BoxFit.fill,
                            )),
                      ),
                        
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          username!,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                            heading!,
                            style:
                                TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800)),
                      ),
                    
                           Column(children: [
                            Text(content!)
                          ]),
                        
                      
                    ]),
              ),
            ),
                ),
              ),
          );
  }
}
