import 'services.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class Global {
  // App Data
  static final String title = 'Fireship';

  // Service
  static final FirebaseAnalytics analytics = FirebaseAnalytics();

  // Data Models
  static final Map models = {
    Topic: (data) => Topic.fromMap(data),
    Quiz: (data) => Quiz.fromMap(data),
    Report: (data) => Report.fromMap(data),
  };


}