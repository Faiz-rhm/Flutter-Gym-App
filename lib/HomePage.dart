
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:gym_app/BottomNavigation.dart';
import 'package:gym_app/HeadingTitle.dart';
import 'package:gym_app/WorkoutCard.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var renderOverlay = true;
  var visible = true;
  var switchLabelPosition = false;
  var extend = false;
  var customDialRoot = false;
  var closeManually = false;
  var useRAnimation = true;
  var isDialOpen = ValueNotifier<bool>(false);
  var speedDialDirection = SpeedDialDirection.up;
  var buttonSize = const Size(70.0, 70.0);
  var childrenButtonSize = const Size(70.0, 70.0);
  var rmicons = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _search(),
            const HeadingTitle(title: "Workouts"),
            _workoutsList(context),
            const SizedBox(height:5,),
            const Padding(padding: EdgeInsets.all(16) ,child: Divider(height: 1,thickness: 2,)),
            const HeadingTitle(title: "For You"),
            _forYouList(context),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
      floatingActionButton: _getFAB(),
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: const Text('Home Page', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
      actions: [
        IconButton(
          icon: const Icon(IconlyLight.category, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  _search() {
    return Container(
      padding: const EdgeInsets.only(right:16, left: 16, top: 16, bottom: 8),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(IconlyLight.search, color: Colors.black,),
            border: InputBorder.none,
          ),
        ),
      )
    );
  }

  _workoutsList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WorkoutCard(
            title: "Weight Lifting",
            image: "assets/images/Workout-rafiki.png",
            onTap: () {
              Navigator.pushNamed(context, '/workout');
            },
            program: '32 Programs',
          ),
          WorkoutCard(
            title: "Cardio",
            image: "assets/images/Fitness tracker-rafiki.png",
            onTap: () {
              Navigator.pushNamed(context, '/workout');
            },
            program: "12 Programs",
          ),
          WorkoutCard(
            title: "Bicep",
            image: "assets/images/Gym-rafiki.png",
            onTap: () {
              Navigator.pushNamed(context, '/workout');
            },
            program: "21 Programs",
          ),
        ]
      ),
    );
  }

   _forYouList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WorkoutCard(
            title: "Gymnastic",
            image: "assets/images/Gymnastic-rafiki.png",
            onTap: () {
              Navigator.pushNamed(context, '/workout');
            },
            program: "10 programs",
          ),
          WorkoutCard(
            title: "Pilates",
            image: "assets/images/Pilates-rafiki.png",
            onTap: () {
              Navigator.pushNamed(context, '/workout');
            },
            program: "15 programs",
          ),
          WorkoutCard(
            title: "Yoga",
            image: "assets/images/Yoga with face masks-rafiki.png",
            onTap: () {
              Navigator.pushNamed(context, '/workout');
            },
            program: "21 programs",
          ),
        ]
      ),
    );
  }

  Widget _getFAB() {
    return SpeedDial(
      backgroundColor: Colors.indigo,
      activeBackgroundColor: Colors.grey[500],
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: const IconThemeData(size: 22.0),
      icon: Icons.add,
      activeIcon: Icons.close,
      openCloseDial: isDialOpen,
      spaceBetweenChildren: 15,
      buttonSize: buttonSize,
      childrenButtonSize: childrenButtonSize,
      visible: visible,
      renderOverlay: renderOverlay,
      overlayColor: Colors.transparent,
      overlayOpacity: 0.7,
      elevation: 8.0,
      animationCurve: Curves.bounceIn,
      animationDuration: const Duration(milliseconds: 150),
      children: [
        SpeedDialChild(
          child: !rmicons ? const Icon(Icons.settings) : null,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          label: 'Settings',
          visible: true,
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text(("Third Child Pressed")))),
          onLongPress: () => debugPrint('THIRD CHILD LONG PRESS'),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0))),
        ),
        SpeedDialChild(
          child: !rmicons ? const Icon(Icons.favorite) : null,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          label: 'Liks',
          visible: true,
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text(("Third Child Pressed")))),
          onLongPress: () => debugPrint('THIRD CHILD LONG PRESS'),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0))),
        ),
        SpeedDialChild(
          child: !rmicons ? const Icon(Icons.save) : null,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          label: 'Saved',
          visible: true,
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text(("Third Child Pressed")))),
          onLongPress: () => debugPrint('THIRD CHILD LONG PRESS'),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0))),
        ),
        SpeedDialChild(
          child: !rmicons ? const Icon(Icons.person) : null,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          label: 'Profile',
          visible: true,
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text(("Third Child Pressed")))),
          onLongPress: () => debugPrint('THIRD CHILD LONG PRESS'),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0))),
        ),
        SpeedDialChild(
          child: !rmicons ? const Icon(Icons.usb) : null,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          label: 'Progress',
          onTap: () => debugPrint('SECOND CHILD'),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0))),
        ),
        SpeedDialChild(
          child: !rmicons ? const Icon(Icons.shopping_basket_sharp,) : null,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          label: 'Shop',
          onTap: () => setState(() => rmicons = !rmicons),
          onLongPress: () => debugPrint('FIRST CHILD LONG PRESS'),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0))),
        ),
      ],
    );
  }
}