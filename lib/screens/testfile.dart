import 'package:flutter/material.dart';
import 'package:zomato_clone/widgets/checkbox_in_list_view.dart';
import 'package:zomato_clone/widgets/protien_list_checkbox.dart';

class TestFile extends StatefulWidget {
  final bool showText;
  const TestFile({super.key, required this.showText});

  @override
  State<TestFile> createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {
  bool isItemChecked = false;
  double basePrice = 199.0;
  int itemCount = 1;
  double totalPrice = 199.0;
  final itemSelectedList = <String>[];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/re1.png'),
            Image.asset('assets/bsItem1.png'),
            const SizedBox(height: 20),
            Image.asset('assets/addOn.png'),
            SizedBox(
              height: 200,
              child: CheckBoxInListView(
                onCheckedChange: (isChecked, text) {
                  // Update the state with the new value
                  setState(() {
                    isItemChecked = isChecked;
                    if (isChecked) {
                      basePrice += 40.0;
                      itemSelectedList.add(text);
                    } else {
                      basePrice -= 40.0;
                      itemSelectedList.remove(text);
                    }
                  });
                      
                  // You can also use the 'text' parameter to perform additional actions
                  // based on the text associated with the checked item.
                },
              ),
            ),
            const Divider(),
            Image.asset('assets/choose_protien.png'),
            SizedBox(
              height: 200,
              child: ProtienListCheckBox(
                onCheckedChange: (isChecked, text,) {
                  // Update the state with the new value
                  setState(() {
                    isItemChecked = isChecked;
                    if (isChecked) {
                      basePrice += 40.0;
                      itemSelectedList.add(text);
                    } else {
                      basePrice -= 40.0;
                      itemSelectedList.remove(text);
                    }
                  });
                      
                  // You can also use the 'text' parameter to perform additional actions
                  // based on the text associated with the checked item.

                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 0, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width / 2.5, // Adjusted width
                    height: height / 20,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.1),
                      border: Border.all(color: Colors.red, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Update the state with the new count
                              setState(() {
                                if (itemCount > 1) {
                                  itemCount--;
                                }
                              });
                            },
                            child: const  Icon(Icons.remove, color: Colors.red, size: 25)
                            ),
                          const SizedBox(width: 10),
                          Text(itemCount.toString(), style: const TextStyle(fontSize: 15, color: Colors.black)),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              // Update the state with the new count
                              setState(() {
                                itemCount++;
                              });
                            },
                            child: const Icon(Icons.add, color: Colors.red, size: 25)
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      //close the bottom sheet and sent Item count and price to the selected restaurant screen
                      Navigator.pop(context, [itemCount, basePrice, widget.showText, itemSelectedList.join(', ')]);
                    },
                    child: Container(
                      width: width / 2.5, // Adjusted width
                      height: height / 20,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Add ₹${basePrice * itemCount}", style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}