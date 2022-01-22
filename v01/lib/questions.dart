import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udemy1/main.dart';
import 'dart:developer';
import 'globals.dart' as globals;

///change compilesdkversion and target sdk version to 31

void sendNotification(){
  log("sending notification...");
  AwesomeNotifications().createNotification(
      content: NotificationContent(
          id: 10,
          channelKey: 'inbox',
          title: 'Simple Notification',
          body: 'Simple body'
      ),
    actionButtons: [NotificationActionButton(key: "A", label: "A"),
                    NotificationActionButton(key: "B", label: "B"),
                    NotificationActionButton(key: "C", label: "C"),]
  );
}
