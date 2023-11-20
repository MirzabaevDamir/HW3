import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String name = '';
  @override
  void initState() {
    name = widget.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              maxRadius: 100,
              backgroundColor: Colors.grey,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network('https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: TextEditingController(text: name),
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  name = value;
                },
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            SizedBox(
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  if(name.isNotEmpty){
                  Navigator.of(context).pop(name);
                    
                  }
                },
                child: const Text('Save'),
              ),
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      );
}
