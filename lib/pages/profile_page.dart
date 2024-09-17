import 'package:email_template/components/profile_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
              radius: 50,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Nicolas Adams',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'nicolasadams@gmail.com',
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Upgrade to PRO',
                style: TextStyle(color: Colors.black),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[700]),
            ),
            SizedBox(height: 16,),
             ProfileItem(icon: Icons.privacy_tip, title: 'Privacy'),
             ProfileItem(icon: Icons.history, title: 'Purchase History'),
             ProfileItem(icon: Icons.support, title: 'Help & Support'),
             ProfileItem(icon: Icons.settings, title: 'Settings'),
             ProfileItem(icon: Icons.person_add, title: 'Invite a Friend'),
             ProfileItem(icon: Icons.logout, title: 'Logout')
          ],
        ),
      ),
    );
  }
}
