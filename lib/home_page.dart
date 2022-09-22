import 'package:flutter/material.dart';
import 'package:toters/widget/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivering To',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Text(
                      'المنزل',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 30,
                    )
                  ],
                ),
                Row(
                  children: [
                   Icon(Icons.notifications_none,size: 30,),
                    Icon(
                      Icons.add_road,
                      size: 30,
                    )
                  ],
                ),
                ],
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Icon(Icons.arrow_circle_right_outlined),
                  SizedBox(width: 10,),
                  Text('10 more orders by August 31 to reach Gold.')
                ],
              ),
             SliderImage(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cardImages('images/png-transparent-hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-burger-sandwich-food-recipe-cheeseburger-thumbnail-removebg-preview.png',180,"Food"),
                cardImages('images/png-transparent-hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-burger-sandwich-food-recipe-cheeseburger-thumbnail-removebg-preview.png',180,"Market"),
              ],
            ),
          SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cardImages('images/png-transparent-hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-burger-sandwich-food-recipe-cheeseburger-thumbnail-removebg-preview.png',120,'Shops'),
                cardImages('images/png-transparent-hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-burger-sandwich-food-recipe-cheeseburger-thumbnail-removebg-preview.png',120,'Rewards'),
                cardImages('images/png-transparent-hamburger-veggie-burger-chicken-sandwich-fast-food-hamburger-burger-burger-sandwich-food-recipe-cheeseburger-thumbnail-removebg-preview.png',120,'Add Funds'),

              ],
            ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('New on Toters',
                        style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                      SizedBox(width: 10,),
                      Icon(Icons.fiber_new,size: 30,color: Colors.grey,)
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,size: 30,)
                ],
              ),
              
              Text("Check out our latest partners and their incredible selection!"),




            ],
          ),
        ),
      ),
      bottomNavigationBar:
      BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'الحساب',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_outlined,
              color: Colors.black,
            ),
            label: 'الطلبات',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet_outlined,
              color: Colors.black,
            ),
            label: 'المحفظة',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: 'الرئيسة',
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,


    unselectedItemColor: Colors.grey.withOpacity(0.7),
      onTap: _onItemTapped,
      ),
    );
  }

  Widget cardImages(String url,double width,String text) {
    return Container(
            height: 100,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Container(
                    height: 80,
                    width: 80,
                    child: Image.asset(url)),
                Text(text)
              ],
            ),
          );
  }



}


