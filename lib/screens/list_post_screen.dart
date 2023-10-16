import 'package:flutter/material.dart';
import 'package:kilogram/models/post_model.dart';

class ListPostScreen extends StatefulWidget {
  const ListPostScreen({super.key});

  @override
  State<ListPostScreen> createState() => _ListPostScreenState();
}

class _ListPostScreenState extends State<ListPostScreen> {
  var post = PostModel().getPostDummyData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: post.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                NetworkImage(post[index].profilePhotoUrl!),
                          ),
                        ),
                        Text(
                          post[index].name!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Image.network(post[index].photoUrl!),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                size: 28,
                                color: Colors.black,
                                weight: 100,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.chat_bubble_outline,
                                size: 28,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.send_outlined,
                                size: 28,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.bookmark_border,
                            size: 28,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
