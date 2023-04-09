import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/chat_screen_component.dart';
import 'communityforum.dart';
import 'hydrationtracker.dart';
import 'moodtracker.dart';
class MentalHealthMainScreen extends StatelessWidget {
  const MentalHealthMainScreen({super.key});

  get image => null;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('CareBuddy'),
      ),
      body: Center(
        child: Image.asset('assets/animation.gif'),
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 68, 67, 67),
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MoodTrackerScreen()),
              );
              break;

               case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HydrationHomePage()),
              );
              break;
               case 2:
              Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) => const ChatbotScreen()),
              );
            break;
               case 3:
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) =>  DiscussionForumScreen()),
              );
              break;
            // add cases for other items here
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mood),
            label: 'Mood Tracker',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.water_drop),
            label: 'Hydration Reminder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'ChatBot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
        ],
      ),
    );
  
  }
}
