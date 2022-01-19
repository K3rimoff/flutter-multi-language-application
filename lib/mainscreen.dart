import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:multi_language/locale/local_keys.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.appbar.tr().toString(),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.hello.tr().toString().toUpperCase(),
              style: const TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              LocaleKeys.text1.tr().toString(),
              style: const TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: ElevatedButton(
                    onPressed: () =>
                        context.setLocale(const Locale('en', 'US')),
                    child: const Text("Change US"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: ElevatedButton(
                    onPressed: () =>
                        context.setLocale(const Locale('tr', 'TR')),
                    child: const Text("Change TR"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: ElevatedButton(
                    onPressed: () => setLocale(context, 'en', 'GB'),
                    child: const Text("Change GB"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void setLocale(BuildContext context, String locale, String locale1) {
    context.setLocale(Locale(locale, locale1));
  }
}
