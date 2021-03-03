// import 'dart:async';

// import 'package:shared_preferences/shared_preferences.dart';

// class Prefs {}

// class Preferences {
//   Preferences._(this.prefs);

//   final SharedPreferences prefs;
//   static Completer<Preferences> _completer;

//   static Future<Preferences> getInstance() async {
//     if (_completer == null) {
//       _completer = Completer<Preferences>();
//       try {
//         final prefs = await SharedPreferences.getInstance();
//         _completer.complete(Preferences._(prefs));
//       } on Exception catch (e) {
//         _completer.completeError(e);
//         final Future<Preferences> sharedPrefsFuture = _completer.future;
//         _completer = null;
//         return sharedPrefsFuture;
//       }
//     }
//     return _completer.future;
//   }

//   operator [](String prefs) {
//     return this.prefs.get(prefs);
//   }

//   operator []=(String prefs, dynamic value) {
//     if (value is String) {
//       this.prefs.setString(prefs, value);
//     } else if (value is int) {
//       this.prefs.setInt(prefs, value);
//     } else if (value is double) {
//       this.prefs.setDouble(prefs, value);
//     } else if (value is bool) {
//       this.prefs.setBool(prefs, value);
//     }
//   }
// }
