import 'package:flutter/material.dart';

class testtt extends StatefulWidget {
  const testtt({super.key});

  @override
  State<testtt> createState() => _testttState();
}

class _testttState extends State<testtt> {

  final _formKey = GlobalKey<FormState>();
  int currentPage = 0;
  List<Widget> pages = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: PageView(
          children: pages,
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Page 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: "Page 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Page 3",
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Email"),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "Address"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "City"),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page3State extends State<Page3> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 42, 121),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"));
          }),
    );
  }
}

