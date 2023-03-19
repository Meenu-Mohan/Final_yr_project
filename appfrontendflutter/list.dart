import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  final List<Profile> profiles = [
    Profile(
      name: 'John Doe',
      height: 175,
      weight: 75,
      age: 30,
      imageAsset:
          'https://img.freepik.com/free-vector/illustration-diverse-people-arms-around-each-other_53876-26693.jpg',
    ),
    Profile(
      name: 'Jane Smith',
      height: 160,
      weight: 55,
      age: 25,
      imageAsset:
          'https://img.freepik.com/free-vector/illustration-diverse-people-arms-around-each-other_53876-26693.jpg',
    ),
    Profile(
      name: 'Bob Johnson',
      height: 185,
      weight: 90,
      age: 35,
      imageAsset:
          'https://img.freepik.com/free-vector/illustration-diverse-people-arms-around-each-other_53876-26693.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profiles'),
      ),
      body: ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          final profile = profiles[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(profile.imageAsset),
              ),
              title: Text(profile.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Height: ${profile.height} cm'),
                  Text('Weight: ${profile.weight} kg'),
                  Text('Age: ${profile.age}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Profile {
  final String name;
  final int height;
  final int weight;
  final int age;
  final String imageAsset;

  Profile({
    required this.name,
    required this.height,
    required this.weight,
    required this.age,
    required this.imageAsset,
  });
}
