import 'dart:ui';

const Color darkColor = Color(0xFF1E1E1E);
const Color primaryColor = Color(0xFF543B3B);
const Color greyColor = Color(0xFFDADBDA);

List<TempNotification> notifications = [
  TempNotification(
      'assets/pngs/profile1.png', 'Foxy sent you a message', DateTime.now()),
  TempNotification(
      'assets/pngs/profile2.png', 'Rachael sent you a message', DateTime.now()),
  TempNotification('assets/pngs/profile3.png',
      'Aaron Wallace sent you a message', DateTime.now()),
  TempNotification('assets/pngs/profile3.png',
      'Congratulations! You got a booking from Aaron Wallace!', DateTime.now()),
  TempNotification(
      'assets/pngs/profile4.png',
      'Christy Aden mentioned you in her album “Fashionista 2022”',
      DateTime.now()),
  TempNotification(
      'assets/pngs/profile5.png', 'Tesco gave you a review', DateTime.now()),
  TempNotification('assets/pngs/profile7.png',
      'Congratulations! You got a booking from Stacey Adams!', DateTime.now()),
  TempNotification(
      'assets/pngs/profile8.png',
      'Congratulations! You got a booking from Stacey Adams!',
      DateTime.now().subtract(const Duration(days: 1))),
  TempNotification(
      'assets/pngs/profile9.png',
      'You received a payment from Michael James',
      DateTime.now().subtract(const Duration(days: 1))),
];

class TempNotification {
  final String profile;
  final String message;
  final DateTime timestamp;

  TempNotification(this.profile, this.message, this.timestamp);
}
