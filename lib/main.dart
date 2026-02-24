import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      home: ProfileCard(),
    );
  }
}

class ProfileCard extends StatefulWidget {
  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  int likeCount = 0;

  // Increment likes
  void incrementLikes() {
    setState(() {
      likeCount++;
    });
  }

  // Decrement likes (never below 0)
  void decrementLikes() {
    setState(() {
      if (likeCount > 0) {
        likeCount--;
      }
    });
  }

  // Reset likes
  void resetLikes() {
    setState(() {
      likeCount = 0;
    });
  }

  // Dynamic background color
  Color getCardColor() {
    if (likeCount >= 15) {
      return Colors.pink[100]!;
    } else if (likeCount >= 8) {
      return Colors.purple[100]!;
    } else {
      return Colors.blue[50]!;
    }
  }

  // Dynamic avatar color
  Color getAvatarColor() {
    if (likeCount >= 15) {
      return Colors.red;
    } else if (likeCount >= 8) {
      return Colors.deepPurple;
    } else {
      return Colors.teal;
    }
  }

  // Dynamic message
  String getMessage() {
    if (likeCount >= 15) {
      return 'Superstar!';
    } else if (likeCount >= 8) {
      return 'You are popular!';
    } else if (likeCount >= 3) {
      return 'Getting noticed!';
    } else {
      return 'Hello there!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: getCardColor(),
        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: getAvatarColor(),
                    child: Text(
                      'CR',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Name
                  Text(
                    'Cyra Renee',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Bio
                  Text(
                    'UNILAK Student in Flutter Development Training',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 15),
                  // Dynamic message
                  Text(
                    getMessage(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal[700],
                    ),
                  ),
                  SizedBox(height: 30),
                  // Like counter display
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, color: Colors.red, size: 30),
                      SizedBox(width: 10),
                      Text(
                        '$likeCount',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Buttons Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: incrementLikes,
                        icon: Icon(Icons.thumb_up),
                        label: Text('Like'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton.icon(
                        onPressed: decrementLikes,
                        icon: Icon(Icons.thumb_down),
                        label: Text('Dislike'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton.icon(
                        onPressed: resetLikes,
                        icon: Icon(Icons.refresh),
                        label: Text('Reset'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}