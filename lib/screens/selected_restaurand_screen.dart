import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/final_bottom_sheet_screen.dart';
import 'package:zomato_clone/screens/testfile.dart';
import 'package:zomato_clone/widgets/square_switch_widget.dart';

class SelectedRestaurent extends StatefulWidget {
  final String restaurentName, foodType;  
  const SelectedRestaurent({super.key, required this.restaurentName, required this.foodType});

  @override
  State<SelectedRestaurent> createState() => _SelectedRestaurentState();
}

class _SelectedRestaurentState extends State<SelectedRestaurent> {
  bool isItemChecked = false;
  double totalPrice = 199.0;
  String itemSelected = '';
  List<String> addOns = [
    'Pesto Paneer',
    'Paneer',
    'Extra Veggies',
    'Mushroom',
    'Corn',
    'Chilli Paneer',
  ];
  List<bool> addOnsChecked = [
    true,
    true,
    true,
    true,
    true,
    true
  ];
  int itemCount = 1;
  double basePrice = 199.0;
  bool showText = false;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold( 
      //AppBar containing the back button
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, top: 0, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.restaurentName, style: TextStyle(fontSize: width/15, fontWeight: FontWeight.bold)),
                        Text(widget.foodType, style: TextStyle(fontSize: width/25)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width / 2.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: width / 5,
                          height: height / 12,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    Text("4.5", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                                    SizedBox(width: 10),
                                    Icon(Icons.star, color: Colors.white, size: 10),
                                  ],
                                ),
                                Text("Delivery", style: TextStyle(fontSize: width/30, color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset("assets/max_safety.png"),
              const SizedBox(height: 10),
              Image.asset("assets/d,d,r.png"),
              const SizedBox(height: 10),
              Image.asset("assets/mode_time_offers.png"),
              const SizedBox(height: 10),
              Container(
                width: width,
                height: height / 20,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(1, 82, 72, 72),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage("assets/ic_delievery_bike.png"), color: Colors.black, size: 25),
                      SizedBox(width: 10),
                      Text("₹25 distance charge", style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Image.asset('assets/full_menu.png'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      SquareSwitch(),
                      SizedBox(width: 10),
                      Text('Veg', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                  const Row(
                    children: [
                      SquareSwitch(),
                      SizedBox(width: 10),
                      Text('Egg', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/Search.png'),
                    ],
                  ), 
                ],
              ),
              const SizedBox(height: 5),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              // create a bottom sheet on click of the image
              GestureDetector(
                onTap: () async {
                // Call showModalBottomSheet and await the result
                  final result = await showModalBottomSheet<dynamic>(
                    context: context,
                    builder: (BuildContext context) {
                      return TestFile(showText: !showText,);
                    },
                  );

                  // Handle the result (result is the data sent back from TestFile)
                  if (result != null && result is List) {
                    setState(() {
                      itemCount = result[0];
                      basePrice = result[1];
                      showText = result[2];
                      itemSelected = result[3];
                      log('inside slected restaurant: $itemSelected');
                      if (showText) {
                        totalPrice = itemCount * basePrice;
                      }
                    });
                  }
                },
                child: Image.asset('assets/recommended1.png'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  // Call showModalBottomSheet and await the result
                  final result = await showModalBottomSheet<dynamic>(
                    context: context,
                    builder: (BuildContext context) {
                      return TestFile(showText: !showText,);
                    },
                  );

                  // Handle the result (result is the data sent back from TestFile)
                  if (result != null && result is List) {
                    setState(() {
                      itemCount = result[0];
                      basePrice = result[1];
                      showText = result[2];
                      if (showText) {
                        totalPrice = itemCount * basePrice;
                        log('message: $totalPrice');
                      }
                    });
                  }
                },
                child: Image.asset('assets/recommended2.png'),
              ),
              const SizedBox(height: 10),
              // create black color capsule shape menu button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: width / 4,
                    height: height / 20,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.menu, color: Colors.white, size: 25),
                          SizedBox(width: 10),
                          Text("Menu", style: TextStyle(fontSize: 15, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset('assets/thirty_off.png'),
              //Text should show the total price of the item and the number of items selected
              showText ? Container(
                color: Colors.red[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '${itemCount.toString()} ITEM',
                            style: const TextStyle(fontSize: 9, color: Colors.white),
                          ),
                          Text(
                            '₹${itemCount * basePrice} plus taxes',
                            style: const TextStyle(fontSize: 9,  color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            log('message');
                            //on click of the button, the interactive bottom sheet should open from the bottom
                            showModalBottomSheet(
                              //increase the height of the bottom sheet
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return FinalBottomSheet(itemPrice: totalPrice,itemQuantity: itemCount,addOns: itemSelected,);
                              },
                            );
                          },
                          child: const Text(
                            'View Cart',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        const Icon(Icons.arrow_right, color: Colors.white, size: 15),
                      ],
                    ),
                  ],
                ),
              ) : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
