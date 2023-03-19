import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';

class PictureUploadPage extends StatefulWidget {
  @override
  _PictureUploadPageState createState() => _PictureUploadPageState();
}

class _PictureUploadPageState extends State<PictureUploadPage> {
  late File _imageFile;
  late LocationData _locationData;

  Future<void> _getImage() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _getLocation() async {
    final location = Location();
    try {
      final currentLocation = await location.getLocation();
      setState(() {
        _locationData = currentLocation;
      });
    } catch (error) {
      print('Error getting location: $error');
    }
  }

  void _submit() {
    // Implement your submit logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picture Upload'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: _getImage,
              icon: Icon(Icons.image),
              label: Text('Select Image'),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _getLocation,
              icon: Icon(Icons.location_on),
              label: Text('Select Location'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _imageFile != null && _locationData != null ? _submit : null,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
