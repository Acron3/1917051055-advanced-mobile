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
                          style: const TextStyle(
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
                                post[index].isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                size: 28,
                                color: post[index].isFavorite
                                    ? Colors.red
                                    : Colors.black,
                                weight: 100,
                              ),
                              onPressed: () {
                                setState(() {
                                  post[index].isFavorite =
                                      !post[index].isFavorite;
                                });
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.chat_bubble_outline,
                                size: 28,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
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
                            post[index].isBookmarked
                                ? Icons.bookmark
                                : Icons.bookmark_border,
                            size: 28,
                            color: post[index].isBookmarked
                                ? Colors.yellow
                                : Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              post[index].isBookmarked =
                                  !post[index].isBookmarked;
                            });
                            if (post[index].isBookmarked) {
                              const snackbar = SnackBar(
                                content: Text(
                                  'Post Saved',
                                  style: TextStyle(fontSize: 18),
                                ),
                                elevation: 10,
                                duration: Duration(seconds: 1),
                                behavior: SnackBarBehavior.floating,
                                margin: EdgeInsets.all(5),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackbar);
                            }
                          },
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
