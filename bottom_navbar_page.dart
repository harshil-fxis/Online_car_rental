import 'package:car_rental/Screen/home_page.dart';
import 'package:car_rental/Screen/message_page.dart';
import 'package:car_rental/Screen/notification_page.dart';
import 'package:car_rental/Screen/profile_page.dart';
import 'package:car_rental/Screen/search_page.dart';
import 'package:flutter/material.dart';

// final GlobalKey<_BottomNavbarPageState> bottomNavbarKey = GlobalKey<_BottomNavbarPageState>();
class BottomNavbarPage extends StatefulWidget {
  const BottomNavbarPage({Key? key}) : super(key: key);

  @override
  // _BottomNavbarPageState createState() => _BottomNavbarPageState();
  State<BottomNavbarPage> createState() => _BottomNavbarPageState();
}

class _BottomNavbarPageState extends State<BottomNavbarPage> {

  final List<Widget> _screenList = [
    HomePage(),
    SearchPage(),
    MessagePage(),
    NotificationPage(),
    ProfilePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  
  // void switchTab(int index){
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _selectedIndex,
        children: _screenList,
      ),
      bottomNavigationBar: Container(
        height: 60,
        // margin: EdgeInsets.only(left: 20,right: 20),
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => _onItemTapped(0), 
              icon: Image.asset("images/icon-logo/Home.png",height: 20,color: _selectedIndex == 0 ? Colors.white : Colors.grey,)
            ),
            IconButton(
              onPressed: () => _onItemTapped(1), 
              icon: Image.asset("images/icon-logo/Search.png",height: 20,color: _selectedIndex == 1 ? Colors.white : Colors.grey,)
            ),
            IconButton(
              onPressed: () => _onItemTapped(2), 
              icon: Image.asset("images/icon-logo/inbox.png",height: 20,color: _selectedIndex == 2 ? Colors.white : Colors.grey,)
            ),
            IconButton(
              onPressed: () => _onItemTapped(3), 
              icon: Image.asset("images/icon-logo/Notifications.png",height: 20,color: _selectedIndex == 3 ? Colors.white : Colors.grey,)
            ),
            IconButton(
              onPressed: () => _onItemTapped(4), 
              icon: Image.asset("images/icon-logo/User (2).png",height: 20,color: _selectedIndex == 4 ? Colors.white : Colors.grey,)
            ),
          ],
        )
      ),
    );
  }
}

// class HomeNavigator extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Navigator(
//       onGenerateRoute: (RouteSettings settings){
//         return MaterialPageRoute(builder: (context) => HomePage());
//       },
//     );
//   }
// }

// class SearchNavigator extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Navigator(
//       onGenerateRoute: (RouteSettings settings){
//         return MaterialPageRoute(builder: (context) => SearchPage());
//       },
//     );
//   }
// }

// class MessageNavigator extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Navigator(
//       onGenerateRoute: (RouteSettings settings){
//         return MaterialPageRoute(builder: (context) => MessagePage());
//       },
//     );
//   }
// }

// class NotificationNavigator extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Navigator(
//       onGenerateRoute: (RouteSettings settings){
//         return MaterialPageRoute(builder: (context) => NotificationPage());
//       },
//     );
//   }
// }

// class ProfileNavigator extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Navigator(
//       onGenerateRoute: (RouteSettings settings){
//         return MaterialPageRoute(builder: (context) => ProfilePage());
//       },
//     );
//   }
// }



// Scaffold(
//       body: screenList[currentIndexValue],
//       bottomNavigationBar: Container(
//         height: 90,
//         padding: EdgeInsets.all(12),
//         margin: EdgeInsets.symmetric(horizontal: 24),
//         // margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.all(Radius.circular(24)),
//         ),
//         child: BottomNavigationBar(
//           selectedItemColor: Colors.black,
//           unselectedItemColor: Colors.grey,
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           onTap: (index){
//             setState(() {
//               currentIndexValue = index;
//             });
//           },
//           currentIndex: currentIndexValue,
//           items: [
//             BottomNavigationBarItem(icon: Image.asset("images/icon-logo/Home.png"),label: "home"),
//             BottomNavigationBarItem(icon: Image.asset("images/icon-logo/Search.png"),label: "search"),
//             BottomNavigationBarItem(icon: Image.asset("images/icon-logo/inbox.png"),label: "message"),
//             BottomNavigationBarItem(icon: Image.asset("images/icon-logo/Notifications.png"),label: "notification"),
//             BottomNavigationBarItem(icon: Image.asset("images/icon-logo/User (2).png"),label: "profile"),
//           ],),
//       ),
//     );