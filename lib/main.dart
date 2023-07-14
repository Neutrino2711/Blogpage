import 'package:blogpage/blogcontent.dart';
import 'package:flutter/material.dart';
import 'package:blogpage/data.dart';
import 'package:provider/provider.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';
// import 'package:flutter_tags/flutter_tags.dart';
import 'tag.dart';

void main() {
  runApp(BlogPage());
}

Data data = Data();

class BlogPage extends StatefulWidget {
  BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  String selectedval = 'all';
  String? dropdownval = 'all';

  List<BlogTile> blogcontent = [];

  void AddData() {
    blogcontent.add(BlogTile(
      url: data.url[0],
      text: "Matchmaking with AI",
      index: 0,
      category: data.category[1],
      tag: data.tags[1].text,
    ));
    blogcontent.add(BlogTile(
      url: data.url[1],
      text: "Rise of Chatbots",
      index: 1,
      category: data.category[1],
      tag: data.tags[0].text,
    ));
    blogcontent.add(BlogTile(
      url: data.url[2],
      text: "Future of Semicondutor chips",
      index: 2,
      category: data.category[1],
      tag: data.tags[1].text,
    ));
    blogcontent.add(BlogTile(
      url: data.url[3],
      text: "Self-preservation intelligenc",
      index: 3,
      category: data.category[1],
      tag: data.tags[0].text,
    ));
    blogcontent.add(BlogTile(
      url: data.url[4],
      text: "The youthful algorithm",
      index: 4,
      category: data.category[1],
      tag: data.tags[0].text,
    ));
    blogcontent.add(BlogTile(
      url: data.url[5],
      text: "Football future",
      index: 5,
      category: data.category[2],
      tag: data.tags[2].text,
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    AddData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.list,
                      size: 35.0,
                    ),
                    Spacer(),
                    Icon(
                      Icons.circle_rounded,
                      size: 55.0,
                    ),
                  ],
                ),
                Text(
                  "Blogs",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.6,
                          child: TextField(
                              onChanged: null,
                              
                              decoration: InputDecoration(
                                // icon: Icon(Icons.search),
                                prefixIcon: Icon(Icons.search),
                                filled: true,
                                fillColor: Colors.black12,
                                hoverColor: Colors.black,
                                
                                  
                                 border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                hintText: "Search Blogs",
                              ),
                              onTap: () async {
                              
                                    var val = await showTopModalSheet(
                                    context, SearchModal());
                                
                              
                              })),
                      Spacer(),
                      DropdownButton(
                          icon: Icon(Icons.list),
                          items: [
                            DropdownMenuItem(
                              child: Text('World'),
                              value: 'world',
                            ),
                            DropdownMenuItem(
                              child: Text('Tech'),
                              value: 'tech',
                            ),
                            DropdownMenuItem(
                              child: Text('Sports'),
                              value: 'sports',
                            ),
                            DropdownMenuItem(
                              child: Text('All'),
                              value: 'all',
                            )
                          ],
                          onChanged: (value) {
                            setState(() {
                              selectedval = value.toString();
                              dropdownval = value;
                            });
                          }),
                    ],
                  ),
                ),
                Expanded(
                  child: BlogList(
                    blogcontent: blogcontent,
                    dropdownvalue: dropdownval,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchModal extends StatefulWidget {
  

  

  @override
  State<SearchModal> createState() => _SearchModalState();
}

class _SearchModalState extends State<SearchModal> {
  TextEditingController textEditingController = TextEditingController();

  // List<BlogTile> dumm = [];

  // List<BlogTile> sortedlst(List<BlogTile>? tags, String val) {
  //   for (var tag in tags!) {
  //     if (val == tag.category) {
  //       dumm.add(tag);
  //     }
  //   }
  //   return dumm;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(
            height: 35.0,
          ),
          TextField(
            enabled: true,
            onChanged: null,
            // onChanged: (value) {
            //   setState(() {
            //     for (int i = 0; i < data.tags.length; i++) {
            //     if (value == data.tags[i].text) {
            //       widget.blogcontent = sortedlst(widget.blogcontent, value);
            //     }
            //   }
            //   });
              
            // },
            decoration: InputDecoration(
              // icon: Icon(Icons.search),
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.black12,
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: "Search Blogs",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                data.tags[0],
                data.tags[1],
                data.tags[2],
                data.tags[3],
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Done"),
          ),
        ],
      ),
    );
  }
}

class BlogList extends StatelessWidget {
  const BlogList({
    super.key,
    required this.blogcontent,
    this.dropdownvalue,
  });

  final List<BlogTile> blogcontent;
  final String? dropdownvalue;

  List<BlogTile> SortedList(String? value, List<BlogTile> list) {
    List<BlogTile> dummy = [];
    for (var listval in list) {
      if (value == 'all') {
        dummy = list;
      } else if (value == listval.category) {
        dummy.add(listval);
      }
    }
    return dummy;
  }

  @override
  Widget build(BuildContext context) {
    List<BlogTile> newlist = SortedList(dropdownvalue, blogcontent);
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      itemBuilder: (context, index) {
        return newlist[index];
      },
      itemCount: newlist.length,
      separatorBuilder: (BuildContext context, index) => Divider(),
    );
  }
}

class BlogTile extends StatelessWidget {
  const BlogTile({this.url, this.text, this.index, this.category, this.tag});

  final String? url, text, category, tag;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.14,
            width: MediaQuery.sizeOf(context).width * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image:
                  DecorationImage(fit: BoxFit.fill, image: NetworkImage(url!)),
            ),
          ),
          Spacer(),
          Container(
              // height: 250.0,
              height: MediaQuery.sizeOf(context).height * 0.14,
              width: MediaQuery.sizeOf(context).width * 0.35,
              child: Column(
                children: [
                  Text(
                    text!,
                    style: TextStyle(
                      // fontSize: 40.0,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                    ),
                  ),
                  Row(
                    children: [
                      Tag(
                        text: tag,
                        color: Colors.black26,
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyWidget(
            url: data.url[index!],
            username: 'Akshaj Pal',
            heading: data.heading[index!],
            content: data.content[index!],
          );
        }));
      },
    );
  }
}
