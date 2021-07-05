import 'package:flutter/material.dart';
import 'package:http_app/services/base_client.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);
//var response = await BaseClient().get('https://jsonplaceholder.typicode.com', '/codos/1');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TestPage')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var response = await BaseClient()
                .get('https://meme-api.herokuapp.com', '/gimme');
            print(response);
          },
          child: Text(''),
        ),
      ),
    );
  }
}
