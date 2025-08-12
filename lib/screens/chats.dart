import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/utils/see_more_text.dart';


class FacebookScreen extends StatelessWidget {
  const FacebookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(68, 67, 67, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(68, 67, 67, 1),
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'facebook',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions:  [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(8.0) ,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 102, 101, 101),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.add, color: Colors.white,)),
          //SizedBox(width: 1),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(8.0) ,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 102, 101, 101),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.search, color: Colors.white,)),
          //SizedBox(width: 1),
          Stack(
  clipBehavior: Clip.none,
  children: [
    // Main chat icon container
    Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 102, 101, 101),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Icon(Icons.chat, color: Colors.white),
    ),

    // Red badge positioned at top right
    Positioned(
      top: 4,
      right: 4,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          "9+",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ],
)

          //SizedBox(width: 1),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // What's on your mind
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    radius: 20,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "What's on your mind?",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  Icon(Icons.image, color: Colors.white,)
                ],
              ),
              
            ),
            
            Divider(color: Colors.black,thickness: 5,),
            SizedBox(height: 5,),

            // Stories section
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 5),
                  createStory("assets/images/profile.jpg", "Create story", isCreateStory: true),
                  const SizedBox(width: 5),
                  createStory("assets/images/profile1.png", "Lizzy Jay Official"),
                  const SizedBox(width:5),
                  createStory("assets/images/profile2.png", "Rosemary Onyinye"),
                  const SizedBox(width: 5),
                  createStory("assets/images/profile3.png", "Paul"),
                  const SizedBox(width: 5),
                ],
              ),
            ),

            Divider(color: Colors.black,thickness: 5,),

            // Post Section
            postCard(
              username: 'Instablog9ja',
              time: '6m',
              icon: Icons.web,
              image: 'assets/images/jonathan.png',
              headline: '2027: Jonathan Set to Run for Presidency,',
            ),
          ],
        ),
      ),
    );
  }

Widget createStory(String image, String name, {bool isCreateStory = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: Column(
      children: [
        Stack(
          children: [
            // Main story background image
            Container(
              width: 120,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Grey container for "Create Story"
            if (isCreateStory)
              Positioned(
                bottom: 0,
                child: Container(
                  width: 120, // match story width
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 102, 101, 101),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                ),
              ),

            // Add icon for "Create Story"
            if (isCreateStory)
              Positioned(
                bottom: 45,
                left: 35,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ),

            // Name text
            Positioned(
              left: 10,
              bottom: 5,
              width: 85,
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Profile picture with border (only for normal stories)
            if (!isCreateStory)
              Positioned(
                top: 10,
                left: 5,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue,
                      width: 3,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 5),
      ],
    ),
  );
}



  Widget postCard({
  required String username,
  required String time,
  required IconData icon,
  required String image,
  required String headline,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Header
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/instablog.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Username + Verified Badge
                Row(
                  children: [
                    Text(
                      username,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.verified,
                      color: Colors.blue,
                      size: 16,
                    ),
                  ],
                ),

                // Time + Dot + Web Icon
                Row(
                  children: [
                    Text(
                      time,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "·",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.public,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.more_horiz, color: Colors.white),
            const SizedBox(width: 20),
            const Icon(Icons.close, color: Colors.white),
          ],
        ),
      ),

      Container(
  padding: const EdgeInsets.only(left: 10),
  child: SeeMoreText(
    text: '2027: Jonathan set to Run for Presidency, Says he is ready and prepared to lead the nation',
    trimLength: 35, // Characters before showing "See more"
    style: const TextStyle(color: Colors.white, fontSize: 17),
  ),
),

      SizedBox(height: 10,),

        // Image
        Container(
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Headline
       Container(
        height: 150,
        width: double.maxFinite,
  padding: const EdgeInsets.only(top: 10, left: 30),
  color: Colors.black,
  child: RichText(
    text: TextSpan(
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
      children: [
        // First part: 2027: Jonathan set to
        const TextSpan(
          text: "2027: ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "JONATHAN ",
          style: TextStyle(color: Colors.yellow[700]),
        ),
        const TextSpan(
          text: "SET ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "TO\n", // keep on same line until break
          style: TextStyle(color: Colors.yellow[700]),
        ),

        // Second part: Run for Presidency,
        TextSpan(
          text: "RUN ",
          style: TextStyle(color: Colors.yellow[700]),
        ),
        const TextSpan(
          text: "FOR ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "PRESIDENCY",
          style: TextStyle(color: Colors.yellow[700]),
        ),
        const TextSpan(
          text: ",",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ),
)


      ],
    );
  }
}