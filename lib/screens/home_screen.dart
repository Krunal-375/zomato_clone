import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/selected_restaurand_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  }

  class _HomeScreenState extends State<HomeScreen> {
  //How to create list of 2 cards showing offers
  List <String> discounts = [
    'assets/discount1.png',
    'assets/discount2.png',
  ];
  List <String> circleImages = [
    'assets/healthy.png',
    'assets/biryani.png',
    'assets/pizza.png',
    'assets/haleem.png',
    'assets/chicken.png',
    'assets/burger.png',
    'assets/cake.png',
    'assets/shawarma.png',
  ];
  List <String> circleImageText = [
    'Healthy',
    'Biryani',
    'Pizza',
    'Haleem',
    'Chicken',
    'Burger',
    'Cake',
    'Shawarma',
  ];
  List <String> restaurantImages = [
    'assets/eat_healthy.png',
    'assets/amul.png',
    'assets/tinku_fast_food_center.png',
    'assets/hanuman_sweets.png',
    'assets/snacks_corner.png',
    'assets/pallavi_biryani.png',
  ];
  List <String> restaurantNames = [
    'Eat Healthy',
    'Amul',
    'Tinku Fast Food Center',
    'Hanuman Sweets',
    'Snacks Corner',
    'Pallavi Biryani',
  ];
  List <String> foodTypes = [
    'Healthy Food',
    'Dessert, Ice Cream, Beverages',
    'Chinese, Italian',
    'Mithai, Beverages',
    'Beverages',
    'Biryani, North Indian, Chinese',
  ];
  List <String> ratings = [
    '4.3',
    '4.2',
    '4.0',
    '4.1',
    '4.1',
    '3.8',
  ];
  List <String> prices = [
    '300Rs for one',
    '150Rs for one',
    '150Rs for one',
    '100Rs for one',
    '100Rs for one',
    '150Rs for one',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,top: 25, right: 18.0, bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Row containing (location icon) at start, (dotted line for searching location) in mid and (list icon) at end
              Image.asset('assets/address.png',height: 50,),
              const SizedBox(height: 10,),
              //create Textfield containg Search image and hint text "Restaurant name, cuisine, or a dish..."
              TextField(
                decoration: InputDecoration(
                  hintText: 'Restaurant name, cuisine, or a dish...',
                  prefixIcon: Image.asset('assets/ic_search.png'),//Icon(Icons.search, color: Colors.red,),
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              //Row containg 5 cards containing (MAX safety, PRO, Rating, Cuisines Popular) of restaurant
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Card containg MAX safety
                  SizedBox(
                    width: MediaQuery.of(context).size.width /5,
                    height: MediaQuery.of(context).size.height /15,
                    child: const Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text('MAX\nSafety', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),), 
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Card containg PRO
                  SizedBox(
                    width: MediaQuery.of(context).size.width /5,
                    height: MediaQuery.of(context).size.height /15,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset('assets/ic_pro.png', height: 15,),
                            const SizedBox(width: 5,),
                            const Text('PRO',),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Card containg Cuisines
                  SizedBox(
                    width: MediaQuery.of(context).size.width /5,
                    height: MediaQuery.of(context).size.height /15,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            const Text('Cuisines', style: TextStyle(fontSize: 12),),
                            const SizedBox(width: 5,),
                            Image.asset('assets/down.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Card containg Rating
                   SizedBox(
                    height: MediaQuery.of(context).size.height /15,
                     child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            const Text('Rating', style: TextStyle(fontSize: 10),),
                            Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Row(
                                  children: [
                                    Image.asset('assets/popular.png',),
                                    const SizedBox(width: 5,),
                                    const Text('Popular', style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                                     ),
                   ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height /6,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width /2,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Image.asset(discounts[index], fit: BoxFit.fill,),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text('Eat what makes you happy', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                ],
              ),
              const SizedBox(height: 10,),
              //GridView.builder containg 8 circular cards (containing images of (Healthy, Biryani, Pizza, Haleem, Chicken, Burger, Cake, Shawarma) and below their text respectively). Grid should have 2 columns
              SizedBox(
                height: MediaQuery.of(context).size.height /2.5,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: 140,
                    childAspectRatio: 1,
                  ),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width /2,
                      //height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                            Image.asset(circleImages[index]).image,
                            radius: 40,
                          ),
                          const SizedBox(height: 10,),
                          Text(circleImageText[index]),
                        ],
                      ),
                    );
                  },
                ),
              ),
              //See more button
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height /20,
                child: Container(
                  foregroundDecoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('See more', style: TextStyle(fontSize: 12),),
                      const SizedBox(width: 5,),
                      Image.asset('assets/down.png'),
                    ],
                  ),
                ),
              ),
              //Text containg "396 restaurants around you"
              const SizedBox(height: 10,),
              const Row(
                children: [
                  Text('396 restaurants around you', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                ],
              ),
              //list of 6 food items SizedBox containing (Image, Restaurant name, Type of food, Rating, Price)
              //Image will be at top, below two rows containg (Restaurant name, Type of food)(mainAxix.start) and (Rating, Price)(mainAxix.end) respectively and Image will be taken from list of restaurantImages
              //Item builder should start with card containg single child as Column that column should containg Imaage, below that row containg (Restaurant name, Type of food) and below that row containg (Rating, Price)
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  SelectedRestaurent(restaurentName: restaurantNames[index], foodType: foodTypes[index],)));
                      log('Restaurant $index tapped');
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        child: Column(                        
                          children: [
                            Image.asset(
                              restaurantImages[index],
                              fit: BoxFit.cover, // Make the image cover the entire width of the card
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 30, right: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(restaurantNames[index], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    color: Colors.green,child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5,0,5,0),
                                      child: Row(
                                      children: [
                                        Text(ratings[index], style: const TextStyle(color: Colors.white, fontSize: 13),),
                                        const Icon(Icons.star, color: Colors.white, size: 13,)
                                      ],
                                                                      ),
                                    )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(foodTypes[index], style: const TextStyle(fontSize: 10)),
                                  Text(prices[index], style: const TextStyle(fontSize:10)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 5, bottom:10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/green_leaf.png'),
                                      const SizedBox(width: 5,),
                                      const Text('Zomato funds environmental projects to\noffset delivery carbon footprint ',
                                      style: TextStyle(fontSize: 10),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/arrow_grow.png'),
                                      const SizedBox(width: 10,),
                                      Image.asset('assets/max_safety.png')
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/ic_shopping.png'), size: 20, color: Colors.black),
            label: 'Home',
            backgroundColor: Colors.white,
            
          ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/ic_footprint.png'), size: 20, color: Colors.grey),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/ic_pro.png'), size: 20, color: Colors.grey),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/ic_health_pro.png'), size: 20, color: Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
      
    );
  }
}