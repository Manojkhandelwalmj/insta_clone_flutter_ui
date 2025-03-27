import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsScreen extends StatefulWidget {
  @override
  _ReelsScreenState createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  final List<String> videoPaths = [
    'assets/videos/ashish_prank_call_shorts.mp4',
    'assets/videos/captain_america_shorts.mp4',
    'assets/videos/mountain_climb.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videoPaths.length,
        itemBuilder: (context, index) {
          return ReelItem(videoPath: videoPaths[index]);
        },
      ),
    );
  }
}

class ReelItem extends StatefulWidget {
  final String videoPath;

  ReelItem({required this.videoPath});

  @override
  _ReelItemState createState() => _ReelItemState();
}

class _ReelItemState extends State<ReelItem> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
      })
      ..setLooping(true)
      ..setVolume(1.0)  // 🔊 Enables sound
      ..play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: _controller.value.isInitialized
              ? VideoPlayer(_controller)
              : Center(child: CircularProgressIndicator()),
        ),

        Positioned(
          bottom: 80,
          left: 16,
          right: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('@username', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('This is an example caption #flutterdev', style: TextStyle(color: Colors.white)),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.music_note, color: Colors.white, size: 16),
                  Text(' Original Audio - User', style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),

        Positioned(
          bottom: 80,
          right: 16,
          child: Column(
            children: [
              IconButton(icon: Icon(Icons.favorite, color: Colors.white, size: 40), onPressed: () {}),
              Text('1.2K', style: TextStyle(color: Colors.white)),
              SizedBox(height: 16),
              IconButton(icon: Icon(Icons.comment, color: Colors.white, size: 40), onPressed: () {}),
              Text('235', style: TextStyle(color: Colors.white)),
              SizedBox(height: 16),
              IconButton(icon: Icon(Icons.send, color: Colors.white, size: 40), onPressed: () {}),
              Text('Share', style: TextStyle(color: Colors.white)),
              SizedBox(height: 16),
              IconButton(icon: Icon(Icons.more_vert, color: Colors.white, size: 40), onPressed: () {}),
            ],
          ),
        ),

        Positioned(
          bottom: 20,
          right: 16,
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                radius: 24,
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text('+ Follow', style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
