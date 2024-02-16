import 'package:flutter/material.dart';

class SettingsTextField extends StatelessWidget {
  final String title;
  final String value;

  const SettingsTextField({
    required this.title,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(1, 1),
                    blurRadius: 2,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13.5,
                    color: Color(0xff440077),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(1, 1),
                    blurRadius: 2,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13.5,
                    color: Color(0xff440077),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('YOGACLAN'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SettingsTextField(
              title: 'Allow Students to join class before',
              value: '10 Mins',
            ),
            const SettingsTextField(
              title: 'Disallow Students to class before',
              value: '10 Mins',
            ),
            const SettingsTextField(
              title: 'Notify Me and the students prior',
              value: '25 Mins',
            ),
            const SettingsTextField(
              title: 'Live Class Recording',
              value: 'YES',
            ),
            const SettingsTextField(
              title: 'Publish live Class recordings for',
              value: '45 days',
            ),
            const SettingsTextField(
              title: 'Allow students to download live class recording',
              value: 'YES',
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  // Functionality to save changes
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.deepPurple,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                ),
                child: const Text(
                  'Save Changes',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'Yoga Clan Settings',
    home: SettingsPage(),
    debugShowCheckedModeBanner: false,
  ));
}
