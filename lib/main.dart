// import 'package:arche_fire/screens/Home_page/banner.dart';
// import 'package:arche_fire/screens/Login/sign_in.dart';
// import 'package:flutter/material.dart';
//
// import 'google_map/G_map.dart';
// import 'google_map/Get_Address_From_Coordinates.dart';
// import 'google_map/getUserCurrentLocation.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Georgia',
//       ),
//       debugShowCheckedModeBanner: false,
//       //  home: registerpage(),
//       //home: Counterr(),
//      //home: Air_cat(),
//   //    home: Convert_Lat_Long(),
//       home:Banner_ (),
//     //  home: Ree_4_detail(),
//         //home:Banner_ (),
//       // home: MyDashboard(),
//     );
//   }
// }
import 'package:arche_fire/screens/fav/hom.dart';
import 'package:arche_fire/screens/fav/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: const MaterialApp(
        home: HomePage1(),
      ),
    );
  }
 }