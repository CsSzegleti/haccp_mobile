import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FileUploaderPage extends StatefulWidget {
  @override
  _FileUploaderPageState createState() => _FileUploaderPageState();
}

class _FileUploaderPageState extends State<FileUploaderPage> {
  List<File> _files = [];
  List<String> _fileNames = [];

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _files = result.files.map((file) {
          return File(file.path!);
        }).toList(growable: true);
        _fileNames = result.files.map((file) {
          return file.name;
        }).toList(growable: true);
      });
    }
  }

  void _uploadFile() async {
    // final url = Uri.parse('https://example.com/upload');
    // final request = http.MultipartRequest('POST', url);
    // for (var i = 0; i < _files.length; i++) {
    // request.files.add(await http.MultipartFile.fromPath('file', _file!.path));

    // }

    // final response = await request.send();

    // if (response.statusCode == 200) {
    //   print('File uploaded!');
    // } else {
    //   print('File upload failed.');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Uploader'),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_files.isEmpty) ...[
              Text(
                'Selected file:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: _fileNames.length,
                  itemBuilder: (context, index) => Chip(
                        label: Text(
                          _fileNames[index],
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
              SizedBox(height: 16),
            ],
            ElevatedButton(
              onPressed: _pickFile,
              child: Text('Select File'),
            ),
            SizedBox(height: 16),
            if (_files.isNotEmpty)
              ElevatedButton(
                onPressed: _uploadFile,
                child: Text('Upload File'),
              ),
          ],
        )),
      ),
    );
  }
}
