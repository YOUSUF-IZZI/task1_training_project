import 'package:flutter/material.dart';


class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({Key? key}) : super(key: key);
  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int bnbIndexNumber =1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight:  Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,    //if we use more than one item
          backgroundColor: Color(0xff76517B),
          currentIndex: bnbIndexNumber,
          //Colors
          selectedItemColor: Color(0xff2D0E34),
          unselectedItemColor: Colors.white,
          //Sizes
          iconSize: 30,
          //styles
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
          onTap: (value) => _onTap(value),
          items: const [
            BottomNavigationBarItem(
              label: 'Refrigerator',
              icon: ImageIcon(
                AssetImage('assets/icons/refrigerator.png'),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Recipes',
              icon: ImageIcon(AssetImage('assets/icons/recipes.png')),
            ),
            BottomNavigationBarItem(
              label: 'Storage Tips',
              icon: ImageIcon(AssetImage('assets/icons/sorage_tips.png')),
            ),
            BottomNavigationBarItem(
              label: 'My Profile',
              icon: ImageIcon(AssetImage('assets/icons/my_profile.png')),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(int index)
  {
    switch(index)
    {
      case 0:
        Navigator.of(context).pushNamed('MyRefridgeratorPage');
        //context.go('MyRefridgeratorPage');
         break;
      case 1:
        Navigator.of(context).pushNamed('RecipesPage');
        //context.go('RecipesPage');
        break;
      case 2:
        Navigator.of(context).pushNamed('SrorageTipsPage');
        //context.go('SrorageTipsPage');
        break;
      case 3:
        Navigator.of(context).pushNamed('MyRefridgeratorPage');
        //context.go('');
        break;
      default:
    }
  }

}
