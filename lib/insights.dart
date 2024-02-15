import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:trainingstudio2/insights_gg.dart';

class insights extends StatefulWidget {
  const insights({super.key});

  @override
  State<insights> createState() => _insightsState();
}

class _insightsState extends State<insights> {
  String valueChoose = 'Feedbacks and Ratings';
  List<String> listItem = ['Feedbacks and Ratings', 'Others'];
  double rating = 0;
  List<Map<String, String>> feedbacks = [
    {
      "name": "Ananya Rao",
      "comment":
          "Excellent online yoga classes! The instructor's soothing voice and well-structured sessions made each class enjoyable. I felt more flexible and relaxed after just a few classes. Highly recommended."
    },
    {
      "name": "Emily Ray",
      "comment":
          "The online classes were a great way to stay active at home. The instructor's cues were very clear, and the sessions had a good balance of relaxation and intensity. However, occasional technical issues disrupted the flow."
    },
    {
      "name": "Rahul Kapoor",
      "comment":
          "These online yoga classes were a fantastic find. The convenience of practicing at home was unbeatable, and the instructor's attention to proper alignment was commendable. A minor improvement could be pacing the class a bit better."
    },
    // Add more feedbacks as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('YOGACLAN')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context)
                          .pop(); // Close the current screen and go back
                    },
                  ),
                  const SizedBox(
                      width:
                          50), // Add some spacing between the back button and the text
                  const Text(
                    'INSIGHTS',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: 210,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurpleAccent, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    // Check the selected item and navigate accordingly
                    if (valueChoose == 'Others') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>InsightsGG()),
                      );
                    }
                    
                  },
                  child: DropdownButton(
                    padding: EdgeInsets.only(left: 4),
                    value: valueChoose,
                    onChanged: (newValue) {
                      setState(() {
                        valueChoose = newValue.toString();
                      });
                    },
                    items: listItem.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(
                          valueItem,
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    underline: Container(), // Remove the default underline
                    icon: const Icon(Icons.arrow_drop_down,
                        color: Colors.deepPurple),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '${rating.toDouble()}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: const Color.fromRGBO(103, 58, 183, 1)),
                        ),
                        const SizedBox(height: 3),
                        RatingBar.builder(
                          initialRating: rating,
                          glow: false,
                          allowHalfRating: true,
                          unratedColor: Colors.grey,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (newRating) {
                            setState(() {
                              rating = newRating;
                            });
                          },
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Column(
                      children: feedbacks.map((feedback) {
                        return FeedbackItem(feedback: feedback);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedbackItem extends StatelessWidget {
  final Map<String, String> feedback;

  const FeedbackItem({required this.feedback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 239, 237, 237),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('assets/profilepic.jpg'),
          ),
          const SizedBox(height: 8),
          Text(
            feedback["name"] ?? "",
            style: TextStyle(
              fontSize: 16,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            feedback["comment"] ?? "",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Reply',
                style: TextStyle(
                  color: Color.fromRGBO(103, 58, 183, 1),
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                foregroundColor: Color.fromRGBO(103, 58, 183, 1),
                side: const BorderSide(color: Colors.deepPurple),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
