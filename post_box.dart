import 'package:flutter/material.dart';
import 'icon_label.dart';

class PostBox extends StatelessWidget {
  const PostBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/32.jpg'),
              ),

              const SizedBox(width: 20),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What's happening?",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  style: TextStyle(color: Colors.black),
                  maxLines: null,
                ),
              ),

            ],
          ),
          const SizedBox(height: 12),

          // 🔄 Icons + Post button in one Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children:  [
                  IconLabel(icon: Icons.videocam, label: "Live", color: Colors.red),
                  SizedBox(width: 16),
                  IconLabel(icon: Icons.image, label: "Photo", color: Colors.green),
                  SizedBox(width: 16),
                  IconLabel(icon: Icons.emoji_emotions, label: "Feeling", color: Colors.amber),
                ],
              ),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text("Post", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
