import 'package:flutter/material.dart';

class PrisonerProfile extends StatelessWidget {
  const PrisonerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(
                    'assets/prisoner_image.jpg'), // Replace with actual image path
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Prisoner Name',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle Cases button press
                        },
                        child: const Row(
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
                        child: const Row(
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
                        child: const Row(
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
          const SizedBox(height: 20.0), // Add some space between the sections
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the second row as needed
            ],
          ),
          const SizedBox(height: 20.0), // Add some space between the sections
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: const Column(
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
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: const Column(
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
          const SizedBox(height: 20.0), // Add some space between the sections
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the fourth row as needed
            ],
          ),
          const SizedBox(height: 20.0), // Add some space between the sections
          const Row(
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
