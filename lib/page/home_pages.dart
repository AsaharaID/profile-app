// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:xplor_app/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bacgkroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                      color: primary,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/primary.png',
                  width: 140,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Anne Margaritha',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'UX Designer',
                  style: TextStyle(
                    fontSize: 16,
                    color: grey,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Wrap(
                  spacing: 38,
                  runSpacing: 40,
                  children: [
                    Image.asset(
                      'assets/images/item.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item-2.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item-3.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item-1.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item-5.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item-6.png',
                      width: 80,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 224,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 290,
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(vertical: 50),
                              child: Column(
                                children: [
                                  Text(
                                    'Update Photo',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'You are only able to change\nthe picture profile once',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 224,
                                    height: 55,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        primary: Colors.orange,
                                        onPrimary: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Text('Update Profile'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
