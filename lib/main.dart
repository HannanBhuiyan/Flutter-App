import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageActivity(),
    );
  }
}

class HomePageActivity extends StatefulWidget {
  @override
  State<HomePageActivity> createState() => _HomePageActivityState();
}
class _HomePageActivityState extends State<HomePageActivity> {
  int _currentIndex = 0;

  int count = 0;

  // final tabs = [
  //   Center( child: Text("Home")),
  //   Center( child: Text("About")),
  //   Center( child: Text("Contact")),
  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Column(
                  children: [
                    Container(
                        height:60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                    ),
                    Center(
                       child:Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                               Text("Hannan Bhuiyan", style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),),
                              Text("App Developer", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white
                              ),)
                           ],
                         ),
                       )
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover
                )
              ),
              ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home",
              style: TextStyle(
                fontSize: 20
              ),),
              onTap: () {
                 Navigator.of(context).push(
                   MaterialPageRoute(builder: (context) => HomePageActivity())
                 );
              }
            ),
            ListTile(
                leading: Icon(Icons.account_box_sharp),
                title: Text("About",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPageActivity()));
                }
            ),
            ListTile(
                leading: Icon(Icons.call),
                title: Text("Contact",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactActivityPage()));
                }
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Page number one",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${count}", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),),
              ),
              ElevatedButton.icon(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutPageActivity())
                    );
                  },
                  icon: Icon(Icons.arrow_forward),
                  label: Text("Go To About page"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber
                  )
              ),
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: (){
          setState(() {
            count++;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_sharp),
              label: "About"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Contact",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}


class AboutPageActivity extends StatefulWidget {
  @override
  State<AboutPageActivity> createState() => _AboutPageActivityState();
}
class _AboutPageActivityState extends State<AboutPageActivity> {
  int _currentIndex = 0;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About page"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height:60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("Hannan Bhuiyan", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                              Text("App Developer", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePageActivity())
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.account_box_sharp),
                title: Text("About",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPageActivity()));
                }
            ),
            ListTile(
                leading: Icon(Icons.call),
                title: Text("Contact",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactActivityPage()));
                }
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Page number two", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${count}", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),),
              ),
              ElevatedButton.icon(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ContactActivityPage(),)
                    );
                  },
                  icon: Icon(Icons.arrow_forward),
                      label: Text("Go To Contact Page"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber
                  ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: (){
          setState(() {
            count++;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.amber,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_sharp),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Contact",
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}


class ContactActivityPage extends StatefulWidget {
  @override
  State<ContactActivityPage> createState() => _ContactActivityPageState();
}
class _ContactActivityPageState extends State<ContactActivityPage> {
  int _currentIndex = 0;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact page"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height:60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("Hannan Bhuiyan", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                              Text("App Developer", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePageActivity())
                  );
                }
            ),
            ListTile(
                leading: Icon(Icons.account_box_sharp),
                title: Text("About",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPageActivity()));
                }
            ),
            ListTile(
                leading: Icon(Icons.call),
                title: Text("Contact",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactActivityPage()));
                }
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Page number three", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${count}", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),),
              ),
              ElevatedButton.icon(
                onPressed: (){
                  // Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePageActivity())
                  );
                },
                icon: Icon(Icons.arrow_back),
                label: Text("Back About"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: (){
          setState(() {
            count++;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.amber,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_sharp),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Contact",
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
