import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kleyboardshop/screens/products_overview_screen.dart';

class ProFile extends StatefulWidget {
  const ProFile({Key? key}) : super(key: key);
  static const routeName = '/profile';
  @override
  _ProFileState createState() => _ProFileState();
}

class _ProFileState extends State<ProFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 35.0,
          backgroundColor: Colors.green,
          elevation: 0.0,
          //centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ProductsOverviewScreen.routeName);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaRgaPKQAjTUszrH8Bdkuf_U04Pzje_BkSvw&usqp=CAU"),
                        fit: BoxFit.cover)),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Container(
                    alignment: Alignment(0.0, 5.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://toigingiuvedep.vn/wp-content/uploads/2021/05/hinh-anh-avatar-de-thuong.jpg"),
                      radius: 65.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
