import 'package:flutter/material.dart';

class PrisonerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(
                    'assets/prisoner_image.jpg'), // Replace with actual image path
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Prisoner Name',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle Cases button press
                        },
                        child: Row(
                          children: [
                            Icon(Icons.balance_sharp),
                            Text('Cases'),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle Appointments button press
                        },
                        child: Row(
                          children: [
                            Icon(Icons.mail),
                            Text('Appointments'),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle Requests button press
                        },
                        child: Row(
                          children: [
                            Icon(Icons.notifications),
                            Text('Requests'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0), // Add some space between the sections
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the second row as needed
            ],
          ),
          SizedBox(height: 20.0), // Add some space between the sections
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Information"),
                    Text("Age : 35"),
                    Text("Phone Number : +91 XXXXX XXXXX"),
                    Text("Email :"),
                    Text("abc@gmail.com"),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Information"),
                    Text("Age : 35"),
                    Text("Phone Number : +91 XXXXX XXXXX"),
                    Text("Email :"),
                    Text("abc@gmail.com"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0), // Add some space between the sections
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the fourth row as needed
            ],
          ),
          SizedBox(height: 20.0), // Add some space between the sections
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the fifth row as needed
            ],
          ),
        ],
      ),
    );
  }
}
