import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String userName;
  final String profileImage;
  final String postImage;
  final String timeAgo;
  final int comments;
  final int shares;

  const PostCard({
    super.key,
    required this.userName,
    required this.profileImage,
    required this.postImage,
    required this.timeAgo,
    required this.comments,
    required this.shares,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Post Header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage),
            ),
            title: Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('$timeAgo · Public'),
            trailing: const Icon(Icons.more_horiz),
          ),

          // Post Image
          Container(
            height: 250,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.purple),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(postImage, fit: BoxFit.cover),
            ),
          ),

          const SizedBox(height: 10),

          // Reactions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 32,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/2.jpg'),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/1.jpg'),
                      ),
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/3.jpg'),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                const Text('+9'),
                const Spacer(),
                Text('$comments Comments'),
                const SizedBox(width: 10),
                Text('$shares Shares'),
              ],
            ),
          ),

          const Divider(),

          // Like, Comment, Share buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _postAction(Icons.thumb_up_alt_outlined, 'Like'),
                _postAction(Icons.comment_outlined, 'Comment'),
                _postAction(Icons.share_outlined, 'Share'),
              ],
            ),
          ),

          const Divider(),

          // Comment input box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profileImage),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a comment...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Icon(Icons.image, color: Colors.grey),
                const SizedBox(width: 10),
                const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                const SizedBox(width: 10),
                const Icon(Icons.send, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _postAction(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey),
        const SizedBox(width: 5),
        Text(label),
      ],
    );
  }
}
