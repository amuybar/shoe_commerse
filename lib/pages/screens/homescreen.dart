import 'package:flutter/material.dart';
import 'package:myapp/widgets/filter_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: Colors.white,
              child: filterWidget(context),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.red,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.green,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    color: Colors.purple,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  filterWidget(context) {
    return Row(
      children: [
        CustomDropdownMenu(
          items: items,
          value: selectedValue,
          onChanged: (val) {
            setState(() {
              selectedValue = val!;
            });
          },
        )
      ],
    );
  }
}

const items = [
  "New","Posh","Used","Branded","All"
];
String selectedValue = "All";
