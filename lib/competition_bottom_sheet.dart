import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  final Function(String) onCategorySelected;

  const CustomBottomSheet({Key? key, required this.onCategorySelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Competitions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the bottom sheet
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () => onCategorySelected('BEST STADIUM SELFIE'),
              child: Center(
                child: Text(
                  'BEST STADIUM SELFIE',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 16),
            Divider(),
            GestureDetector(
              onTap: () => onCategorySelected('BEST JERSEY PORTRAIT'),
              child: Center(
                child: Text(
                  'BEST JERSEY PORTRAIT',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 16),
            Divider(),
            GestureDetector(
              onTap: () => onCategorySelected('BEST OMG MOMENTS'),
              child: Center(
                child: Text(
                  'BEST OMG MOMENTS',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 16),
            Divider(),
            GestureDetector(
              onTap: () => onCategorySelected('BEST CLOSE UP SHOT'),
              child: Center(
                child: Text(
                  'BEST CLOSE UP SHOT',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 16),
            Divider(),
          ],
        ),
      ),
    );
  }
}