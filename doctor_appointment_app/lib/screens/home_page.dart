import 'package:doctor_appointment_app/components/appointment.card.dart';
import 'package:doctor_appointment_app/components/doctor_card.dart';
import 'package:doctor_appointment_app/models/auth_model.dart';
import 'package:doctor_appointment_app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class DoctorDetails extends StatelessWidget {
  final String category;

  const DoctorDetails({required this.category, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget pageContent;

    // Render different content based on the selected category
    if (category == "Fashion Rebond") {
      pageContent = _buildFashionRebondDetails();
    } else if (category == "Fashion Haircuts") {
      pageContent = _buildFashionHaircutsDetails();
    } else if (category == "Footspa") {
      pageContent = _buildFootspaDetails();
    } else if (category == "Nail Polish") {
      pageContent = _buildNailPolishDetails();
    } else if (category == "Nail Art") {
      pageContent = _buildNailArtDetails();
    } else {
      // Default content if the category is not recognized
      pageContent = _buildDefaultDetails();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
        centerTitle: true,
      ),
      body: Center(
        child: pageContent,
      ),
    );
  }

  Widget _buildFashionRebondDetails() {
    // Customize this section with the content for the "Fashion Rebond" category
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/rebond.jpg',
                          fit: BoxFit.cover,
                          width: 225,
                          height: 420,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond2.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond3.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              'Fashion Rebond',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          // Add a SizedBox for spacing above the category title
        ],
      ),
    );
  }

  Widget _buildFashionHaircutsDetails() {
    // Customize this section with the content for the "Fashion Haircuts" category
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/rebond.jpg',
                          fit: BoxFit.cover,
                          width: 225,
                          height: 420,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond2.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond3.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              'Fashion Haircut',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          // Add a SizedBox for spacing above the category title
        ],
      ),
    );
  }

  Widget _buildFootspaDetails() {
    // Customize this section with the content for the "Footspa" category
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/rebond.jpg',
                          fit: BoxFit.cover,
                          width: 225,
                          height: 420,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond2.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond3.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              'Foot Spa',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          // Add a SizedBox for spacing above the category title
        ],
      ),
    );
  }

  Widget _buildNailPolishDetails() {
    // Customize this section with the content for the "Nail Polish" category
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/rebond.jpg',
                          fit: BoxFit.cover,
                          width: 225,
                          height: 420,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond2.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond3.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              'Nail Polish',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          // Add a SizedBox for spacing above the category title
        ],
      ),
    );
  }

  Widget _buildNailArtDetails() {
    // Customize this section with the content for the "Nail Art" category
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/nailart.jpg',
                          fit: BoxFit.cover,
                          width: 225,
                          height: 420,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/nailart2.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/nailart3.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              'Nail Art',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          // Add a SizedBox for spacing above the category title
        ],
      ),
    );
  }

  Widget _buildDefaultDetails() {
    // Default content when the category is not recognized
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/rebond.jpg',
                          fit: BoxFit.cover,
                          width: 225,
                          height: 420,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond2.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/rebond3.jpg',
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              'Fashion Rebond',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          // Add a SizedBox for spacing above the category title
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> user = {};
  Map<String, dynamic> doctor = {};
  List<dynamic> favList = [];
  List<Map<String, dynamic>> medCat = [
    {
      "icon": FontAwesomeIcons.calendarCheck,
      "category": "Fashion Rebond",
    },
    {
      "icon": FontAwesomeIcons.calendarCheck,
      "category": "Fashion Haircuts",
    },
    {
      "icon": FontAwesomeIcons.calendarCheck,
      "category": "Footspa",
    },
    {
      "icon": FontAwesomeIcons.calendarCheck,
      "category": "Nail Polish",
    },
    {
      "icon": FontAwesomeIcons.calendarCheck,
      "category": "Nail Art",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    user = Provider.of<AuthModel>(context, listen: false).getUser;
    doctor = Provider.of<AuthModel>(context, listen: false).getAppointment;
    favList = Provider.of<AuthModel>(context, listen: false).getFav;

    return Container(
      color: Colors.black,
      child: Scaffold(
        // If user is empty, then return progress indicator
        body: user.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              user['name'],
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/profile1.jpg'),
                              ),
                            )
                          ],
                        ),
                        Config.spaceMedium,
                        const Text(
                          'Category',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Config.spaceSmall,
                        SizedBox(
                          height: Config.heightSize * 0.05,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children:
                                List<Widget>.generate(medCat.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  // Navigate to doctor_details.dart with category data
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DoctorDetails(
                                        category: medCat[index]['category'],
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                  margin: const EdgeInsets.only(right: 20),
                                  color: Config.primaryColor,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        FaIcon(
                                          medCat[index]['icon'],
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          medCat[index]['category'],
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        Config.spaceSmall,
                        const Text(
                          'Appointment Today',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Config.spaceSmall,
                        doctor.isNotEmpty
                            ? AppointmentCard(
                                doctor: doctor,
                                color: Config.primaryColor,
                              )
                            : Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      'No Appointment Today',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        Config.spaceSmall,
                        const Text(
                          'Top Staff:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Config.spaceSmall,
                        Column(
                          children:
                              List.generate(user['doctor'].length, (index) {
                            return DoctorCard(
                              doctor: user['doctor'][index],
                              // If fav list contains particular doctor id, then show fav icon
                              isFav: favList
                                      .contains(user['doctor'][index]['doc_id'])
                                  ? true
                                  : false,
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
