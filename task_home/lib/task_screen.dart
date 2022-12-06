import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          radius: 20.0,
          child: Image(image: AssetImage('image/download.jfif')),
        ),
        titleSpacing: 20,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_alert),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.app_registration),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0,
              ),
              Text(
                'Hi: Vanessa',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white60,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Where do you want be?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 290,
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        label: Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[800],
                        prefixIconColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: IconButton(
                      color: Colors.blue,
                      onPressed: () {},
                      icon: Icon(
                        Icons.place,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.black, backgroundColor: Colors.blue),
                      onPressed: () {},
                      child: const Text(
                        'Beach',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Camp',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Mountain',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Forest',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 260,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: 10,
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Image(
                            image: AssetImage(
                              'image/river.jfif',
                            ),
                            fit: BoxFit.cover,
                          ),
                          width: 320,
                          height: 180),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Byron Beach',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('image/download.png'),
                                        height: 40,
                                        width: 40,
                                      ),
                                      Text(
                                        'Auastralia',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 160,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '4.9',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.bookmark,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: '.',
            icon: Icon(
              Icons.home_filled,
              color: Colors.blue,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            label: '.',
            icon: Icon(
              Icons.business_center,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            label: '.',
            icon: Icon(
              Icons.add,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            label: '.',
            icon: Icon(
              Icons.bookmark,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
