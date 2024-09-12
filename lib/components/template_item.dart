import 'package:flutter/material.dart';

class TemplateItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final bool isVisible;

  const TemplateItem(
      {super.key, required this.imagePath,
      required this.title,
      required this.description,
      required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        const SizedBox(
          height: 12,
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(
          height: 8,
        ),
        Visibility(
          visible: isVisible,
          child: Center(
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black, width: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  'Try it now',
                  style: TextStyle(color: Colors.black),
                )),
          ),
        )
      ],
    );
  }
}
