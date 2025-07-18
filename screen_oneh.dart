import 'package:flutter/material.dart';

import '../PostScreen/post_card.dart';
import 'top_bar.dart';
import 'story_section.dart';
import 'post_box.dart';

class ScreenOneh extends StatelessWidget {
  const ScreenOneh({super.key});

  final List<Map<String, String>> stories = const [
    {
      "name": "Saleh",
      "image": "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"
    },
    {
      "name": "Edilson",
      "image": "https://randomuser.me/api/portraits/men/2.jpg"
    },
    {
      "name": "Afrim",
      "image": "https://randomuser.me/api/portraits/men/3.jpg"
    },
    {
      "name": "Eduardo",
      "image": "https://randomuser.me/api/portraits/men/4.jpg"
    },
    {
      "name": "Eduardo",
      "image": "https://randomuser.me/api/portraits/men/5.jpg"
    },
    {
      "name": "Saleh",
      "image": "https://randomuser.me/api/portraits/men/6.jpg"
    },
    {
      "name": "Edilson",
      "image": "https://randomuser.me/api/portraits/men/7.jpg"
    },
    {
      "name": "Afrim",
      "image": "https://randomuser.me/api/portraits/men/8.jpg"
    },
    {
      "name": "Eduardo",
      "image": "https://randomuser.me/api/portraits/men/9.jpg"
    },
    {
      "name": "Eduardo",
      "image": "https://randomuser.me/api/portraits/men/10.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // 🔁 Important to scroll when posts increase
        padding: const EdgeInsets.only(top: 50, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBar(),
            const SizedBox(height: 20),
            StorySection(stories: stories),
            const SizedBox(height: 20),
            const PostBox(),
            const SizedBox(height: 20),

            // ✅ PostCard Call
            PostCard(
              userName: 'Sepural Gallery',
              profileImage: 'https://randomuser.me/api/portraits/men/10.jpg',
              postImage: 'https://picsum.photos/500/300',
              timeAgo: '15h',
              comments: 3,
              shares: 17,
            ),


            const SizedBox(height: 10),

            PostCard(
              userName: 'John Doe',
              profileImage: 'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-sulimansallehi-1704488.jpg&fm=jpg',
              postImage: 'https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '1h',
              comments: 5,
              shares: 10,
            ),
            PostCard(
              userName: 'John Doe',
              profileImage: 'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-sulimansallehi-1704488.jpg&fm=jpg',
              postImage: 'https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '1h',
              comments: 5,
              shares: 10,
            ),
            PostCard(
              userName: 'Emma Watson',
              profileImage: 'https://randomuser.me/api/portraits/women/65.jpg',
              postImage: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '2h',
              comments: 12,
              shares: 7,
            ),
            PostCard(
              userName: 'Michael Scott',
              profileImage: 'https://randomuser.me/api/portraits/men/45.jpg',
              postImage: 'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '3h',
              comments: 8,
              shares: 3,
            ),
            PostCard(
              userName: 'Sophia Lee',
              profileImage: 'https://randomuser.me/api/portraits/women/30.jpg',
              postImage: 'https://images.unsplash.com/photo-1433878455169-4698e60005b1?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '30m',
              comments: 3,
              shares: 1,
            ),
            PostCard(
              userName: 'James Bond',
              profileImage: 'https://randomuser.me/api/portraits/men/3.jpg',
              postImage: 'https://images.unsplash.com/photo-1500534623283-312aade485b7?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '4h',
              comments: 9,
              shares: 4,
            ),
            PostCard(
              userName: 'Olivia Brown',
              profileImage: 'https://randomuser.me/api/portraits/women/12.jpg',
              postImage: 'https://images.unsplash.com/photo-1500534623283-312aade485b7?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '5h',
              comments: 15,
              shares: 9,
            ),
            PostCard(
              userName: 'David Smith',
              profileImage: 'https://randomuser.me/api/portraits/men/60.jpg',
              postImage: 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '6h',
              comments: 6,
              shares: 2,
            ),
            PostCard(
              userName: 'Isabella Garcia',
              profileImage: 'https://randomuser.me/api/portraits/women/22.jpg',
              postImage: 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '10m',
              comments: 1,
              shares: 0,
            ),
            PostCard(
              userName: 'William Johnson',
              profileImage: 'https://randomuser.me/api/portraits/men/27.jpg',
              postImage: 'https://images.unsplash.com/photo-1518773553398-650c184e0bb3?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '7h',
              comments: 7,
              shares: 5,
            ),
            PostCard(
              userName: 'Mia Martinez',
              profileImage: 'https://randomuser.me/api/portraits/women/9.jpg',
              postImage: 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              timeAgo: '8h',
              comments: 10,
              shares: 6,
            ),

          ],
        ),
      ),
    );
  }
}
