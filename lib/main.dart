import 'package:flutter_sau_welcome_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_ui/material_ui.dart';

//---------------------------------------------
void main() {
  runApp(
    //เรียกใช้งานคลาสที่เรียกใช้ Widget หลักของแอป
    FlutterSauWelcomeApp(),
  );
}

//---------------------------------------------
// คลาสที่เรียกใช้ Widget หลักของแอป คือ MaterialApp() นิยมเป็นคลาสแบบ Statefull
class FlutterSauWelcomeApp extends StatefulWidget {
  const FlutterSauWelcomeApp({super.key});

  @override
  State<FlutterSauWelcomeApp> createState() => _FlutterSauWelcomeAppState();
}

class _FlutterSauWelcomeAppState extends State<FlutterSauWelcomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUi(),
      theme: ThemeData(
        //กำหนด font หลักเป็น Google Font ชื่อ Urbanist
        textTheme: GoogleFonts.urbanistTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
