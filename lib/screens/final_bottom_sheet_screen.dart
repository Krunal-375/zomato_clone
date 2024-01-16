import 'package:flutter/material.dart';
import 'package:interactive_bottom_sheet/interactive_bottom_sheet.dart';
import 'dart:developer';
class FinalBottomSheet extends StatefulWidget {
  final double itemPrice;
  final int itemQuantity;
  final String addOns;
  const FinalBottomSheet({super.key, required this.itemPrice, required this.itemQuantity, required this.addOns});

  @override
  State<FinalBottomSheet> createState() => _FinalBottomSheetState();
}

class _FinalBottomSheetState extends State<FinalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    log('itemPrice: ${widget.itemPrice}');
    return InteractiveBottomSheet(
        options: const InteractiveBottomSheetOptions(backgroundColor: Colors.grey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: Colors.white,child: Image.asset('assets/delivery.png')),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/VegIcon.png'),
                    const SizedBox(width: 10,),
                    //add image that cover rest of the space
                    const Text('Plant Protien Bowl',style: TextStyle(fontSize: 15),),
                    const Spacer(),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.remove,color: Colors.red,size: 20,),
                          const SizedBox(width: 10,),
                          Text('${widget.itemQuantity}',style: const TextStyle(fontSize: 15,color: Colors.black),),
                          const SizedBox(width: 10,),
                          const Icon(Icons.add,color: Colors.red,size: 20,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    Text('199',style: TextStyle(fontSize: 15),),
                    Spacer(),
                    Text('199',style: TextStyle(fontSize: 15),),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10,),
                    const Text('Add Ons:   ',style: TextStyle(fontSize: 12, color: Colors.grey,)),
                    Flexible(child: Text(widget.addOns,style: const TextStyle(fontSize: 12, color: Colors.grey),softWrap: true,maxLines: 2,)),
                    const SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.only(top: 30,bottom: 10,left: 10,right: 10),
                child: Center(child: Text(
                  'Add Cooking Instructions (Optional)',
                  style: TextStyle(
                    shadows: [
                      Shadow(
                          color: Colors.grey,
                          offset: Offset(0, -5))
                    ],
                    color: Colors.transparent,
                    decoration:
                    TextDecoration.underline,
                    decorationColor: Colors.grey,
                    decorationThickness: 2,
                    decorationStyle:
                    TextDecorationStyle.dashed,
                  ),
                )),
              )
            ),
            const SizedBox(height: 1,),
            Image.asset('assets/after_order_offer.png'),
            const SizedBox(height: 1,),
            // Please tip your wallet
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Please tip your wallet',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    const Padding(
                      padding:EdgeInsets.only(right: 50),
                      child: Text('Support your valet and make their day! 100% of your tip will be transferred to your valet.',style: TextStyle(fontSize: 13),),
                    ),
                    const Divider(thickness: 1,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey)

                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/tip1.png',height: 20,width: 30,),
                                  const Text('₹10',style: TextStyle(fontSize: 15),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/tip2.png',height: 20,width: 30,),
                                const Text('₹30',style: TextStyle(fontSize: 15),),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/tip3.png',height: 20,width: 30,),
                                const Text('₹50',style: TextStyle(fontSize: 15),),


                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/tip4.png',height: 20,width: 30,),
                                const Text('Custom',style: TextStyle(fontSize: 15),),
                                //give me rupee symbol in a string
                                const Text('',style: TextStyle(fontSize: 15),),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 253, 240),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: Column(
                          children: [
                            //4 rows having main axis as space between
                            //1st row having 'Item Total' and Item Price
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Item Total',style: TextStyle(fontSize: 15, color: Colors.grey),),
                                Text('${widget.itemPrice}0',style: const TextStyle(fontSize: 15, color: Colors.grey),),
                              ],
                            ),
                            //2nd row having 'Delivery Charges'(deleivery charges text should be in dotted line with some offset) and 'ruppee(symbol) 50'
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Delivery Charges',style: TextStyle(fontSize: 15, color: Colors.grey),),
                                Text('50',style: TextStyle(fontSize: 15, color: Colors.grey),),
                              ],
                            ),
                            //3rd row having 'Taxes' and 'ruppee(symbol) 5.00'
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Taxes',style: TextStyle(fontSize: 15, color: Colors.grey),),
                                Text('5.00',style: TextStyle(fontSize: 15, color: Colors.grey),),
                              ],
                            ),
                            //4th row having 'Donate ruppee(symbol) 3 to Feeding India Foundation' (Donate text should be in dotted line with some offset) and then red color 'Add' textButton
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Donate ₹3 to Feeding India Foundation',style: TextStyle(fontSize: 15, color: Colors.grey),),
                                Text('Add',style: TextStyle(fontSize: 15,color: Colors.red),),
                              ],
                            ),
                            //5th row having 'Grand Total' and 'ruppee(symbol) Item Price + 50 + 5.00' (Grand total text and 2nd text should be bold)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Grand Total',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Text('${widget.itemPrice + 50 + 5.00}0',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(thickness: 1,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)

                      ),
                      child: Container(
                        //add background image
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/delivery_instruction.png'),
                          ),
                        ),
                        child: Stack(children: [Positioned(
                          top: 320,
                          left: -10,

                            child: Image.asset('assets/green_leaf.png',height: 30,width: 50,)
                        )]),
                      ),//Image.asset('assets/delivery_instruction.png'),
                    ),
                    const SizedBox(height: 20,),
                    //Row having two images
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/Gpay.png',width: 100,height: 150,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red[900],
                              borderRadius: BorderRadius.circular(5),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('₹${widget.itemPrice + 50 + 5.00}0',style: const TextStyle(fontSize: 20, color: Colors.white),),
                                    const Text('Total',style: TextStyle(fontSize: 15, color: Colors.white),),
                                  ],
                                ),
                                const SizedBox(width: 10,),
                                const Text('Place Order',style: TextStyle(fontSize: 20, color: Colors.white),),
                                const Icon(Icons.arrow_right,color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ),

          ],
        ),
      );
  }
}