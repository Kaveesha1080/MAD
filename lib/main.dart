import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Black App Bar
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      // Page body
      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Profile picture
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.grey[200],
                  child: const Icon(
                    Icons.person,
                    size: 55,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Horizontal line
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),

            const SizedBox(height: 5),

            // Name
            const Text(
              "Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Diluka",
              style: TextStyle(
                fontSize: 11,
              ),
            ),

            const SizedBox(height: 12),

            // Email
            const Text(
              "Email",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),

            const SizedBox(height: 5),

            Row(
              children: const [
                Icon(
                  Icons.email,
                  size: 14,
                  color: Colors.black,
                ),

                SizedBox(width: 5),

                Text(
                  "diluka.w@nsbm.ac.lk",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Points
            const Text(
              "Points",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),

            const SizedBox(height: 5),

            Row(
              children: const [
                Icon(
                  Icons.star,
                  size: 14,
                  color: Colors.black,
                ),

                SizedBox(width: 5),

                Text(
                  "0",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Bottom right + button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Add button pressed");
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
