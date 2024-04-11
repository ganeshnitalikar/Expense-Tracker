import 'package:expense_tracker/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text(
          "June 2022",
          style: TextStyle(
              fontFamily: 'Poppinis',
              fontSize: 16,
              height: 2,
              fontWeight: FontWeight.w500),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Expanded(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            expenseRow(context,
                title: "Medicine",
                iconPath: "assets/icons/medical.png",
                description: "Lorem Ipsum is simply dummy text of the lorem ",
                amount: 520),
            const SizedBox(
              height: 10,
            ),
            expenseRow(context,
                title: "Food",
                iconPath: "assets/icons/food.png",
                description: "Lorem Ipsum is simply dummy text of the lorem ",
                amount: 650),
            const SizedBox(
              height: 10,
            ),
            expenseRow(context,
                title: "Shopping",
                iconPath: "assets/icons/shopping.png",
                description: "Lorem Ipsum is simply dummy text of the lorem ",
                amount: 325),
            const SizedBox(
              height: 10,
            ),
            expenseRow(context,
                title: "Fuel",
                iconPath: "assets/icons/fuel.png",
                description: "Lorem Ipsum is simply dummy text of the lorem ",
                amount: 600),
            const SizedBox(
              height: 10,
            ),
            expenseRow(context,
                title: "Entertainment",
                iconPath: "assets/icons/entertainment.png",
                description: "Lorem Ipsum is simply dummy text of the lorem ",
                amount: 475),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showMyBottomSheet(context);
          },
          backgroundColor: Colors.white,
          icon: Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff0EA17D)),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              )),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(67),
          ),
          label: const Text(
            "Add Transaction",
            style: TextStyle(
                fontSize: 12,
                height: 2,
                color: Color(0xff252525),
                wordSpacing: 1,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          )),
    );
  }

  showMyBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Center(child: Text("Add Task")),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Date",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffBFBDBD), width: 1))),
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Amount",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffBFBDBD), width: 1))),
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Category",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffBFBDBD), width: 1))),
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffBFBDBD), width: 1))),
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(child: myAddBtn(context)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget myAddBtn(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xff0EA17D),
          borderRadius: BorderRadius.circular(67)),
      child: const Text(
        "Add",
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
