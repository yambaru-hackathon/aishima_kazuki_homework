import 'package:aishima_kazuki_homework/view_model/custom_icon_button.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('投稿'),
      ),
      body: FeedList(),
    );
  }
}

class FeedList extends StatelessWidget {
  FeedList({super.key});
  final List<String> postImages = [
    'https://user0514.cdnw.net/shared/img/thumb/domain458A0936_TP_V.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://blogdesign-lab.com/wp-content/uploads/yuseiookawa1971944_TP_V-1280x853.jpg.webp',
    'https://news.value-press.com/wp-content/uploads/interview_top_image_pakutaso.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postImages.length,
      itemBuilder: (context, index) {
        return PostWidget(imageUrl: postImages[index]);
      },
    );
  }
}

class PostWidget extends StatelessWidget {
  final String imageUrl;

  const PostWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            title: Row(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/3621/3621435.png',
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 8.0),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ユーザー名',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'location',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            actions: const [CustomIconButton(icon: Icons.more_horiz)],
          ),
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 300.0,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CustomIconButton(icon: Icons.favorite_border),
                SizedBox(width: 8.0),
                CustomIconButton(icon: Icons.chat_bubble_outline),
                SizedBox(width: 8.0),
                CustomIconButton(icon: Icons.send),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('「いいね！」200,000件'),
                SizedBox(height: 8.0),
                Text('コメント'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
