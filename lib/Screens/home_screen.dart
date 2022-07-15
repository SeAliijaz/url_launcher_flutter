import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _launchInstagramURL() async {
    await launchUrl(Uri.parse("https://www.instagram.com/"));
  }

  void _launchTwitter() async {
    await launchUrl(Uri.parse("https://twitter.com/"));
  }

  void _launchFacebook() async {
    await launchUrl(Uri.parse("https://facebook.com/"));
  }

  void _launchLinkedIn() async {
    await launchUrl(Uri.parse("https://www.linkedin.com/"));
  }

  void _launchGithub() async {
    await launchUrl(Uri.parse("https://github.com/"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          'Url Launcher',
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _launchInstagramURL,
                child: Text("Go to Instagram"),
              ),
              ElevatedButton(
                onPressed: _launchTwitter,
                child: Text("Go to Twitter"),
              ),
              ElevatedButton(
                onPressed: _launchFacebook,
                child: Text("Go to Facebook"),
              ),
              ElevatedButton(
                onPressed: _launchLinkedIn,
                child: Text("Go to LinkedIn"),
              ),
              ElevatedButton(
                onPressed: _launchGithub,
                child: Text("Go to GitHub"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
