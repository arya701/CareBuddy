
import 'package:flutter/material.dart';

class MoodTrackerScreen extends StatefulWidget {
  const MoodTrackerScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MoodTrackerScreenState createState() => _MoodTrackerScreenState();
}

class _MoodTrackerScreenState extends State<MoodTrackerScreen> {
  int _moodLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood Tracker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'How are you feeling today?',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MoodButton(
                moodLevel: 1,
                label: '😢',
                isSelected: _moodLevel == 1,
                onPressed: () {
                  setState(() {
                    _moodLevel = 1;
                  });
                },
              ),
              MoodButton(
                moodLevel: 2,
                label: '😕',
                isSelected: _moodLevel == 2,
                onPressed: () {
                  setState(() {
                    _moodLevel = 2;
                  });
                },
              ),
              MoodButton(
                moodLevel: 3,
                label: '😐',
                isSelected: _moodLevel == 3,
                onPressed: () {
                  setState(() {
                    _moodLevel = 3;
                  });
                },
              ),
              MoodButton(
                moodLevel: 4,
                label: '😊',
                isSelected: _moodLevel == 4,
                onPressed: () {
                  setState(() {
                    _moodLevel = 4;
                  });
                },
              ),
              MoodButton(
                moodLevel: 5,
                label: '😄',
                isSelected: _moodLevel == 5,
                onPressed: () {
                  setState(() {
                    _moodLevel = 5;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              
              Navigator.pop(context);
            },
            child: const Text('Save Mood'),
          ),
        ],
      ),
    );
  }
}

class MoodButton extends StatelessWidget {
  final int moodLevel;
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const MoodButton({
    Key? key,
    required this.moodLevel,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}