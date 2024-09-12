
import 'package:email_template/components/template_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Email Template',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFFEB70FF),
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TemplateItem(
                  imagePath: 'assets/images/frame.png',
                  title: 'Customize this email template!',
                  description: 'Boost your emails with Blush! Create dope emails easy and fast! Install the Blush plugin to customize all the illustrations!',
                  isVisible: false,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TemplateItem(
                        imagePath: 'assets/images/image_1.png',
                        title: 'Customize this email template!',
                        description: 'Boost your emails with Blush! Create dope emails easy and fast! Install the Blush plugin to customize all the illustrations!',
                        isVisible: true,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TemplateItem(
                        imagePath: 'assets/images/image_2.png',
                        title: 'Customize this email template!',
                        description: 'Boost your emails with Blush! Create dope emails easy and fast! Install the Blush plugin to customize all the illustrations!',
                        isVisible: true,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
