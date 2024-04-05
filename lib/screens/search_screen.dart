import 'package:digit_assignment/models/birth_registration/birth_registration_model.dart';
import 'package:digit_assignment/models/dummy_data.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_assignment/screens/form_screen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _idController = TextEditingController();
  List<BirthRegistrationModel> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchResults = DummyData.dummyList;
  }

  Future<void> _searchById() async {
    String id = _idController.text;
    if (id.isEmpty) {
      _searchResults = DummyData.dummyList;
    } else {
      _searchResults = DummyData.dummyList
          .where((entry) => entry.tenantId.contains(id))
          .toList();
    }

    setState(() {});
  }

  void _navigateToFormsScreen(BirthRegistrationModel? details) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FormScreen(
        title: "Birth Certificate Registration",
        details: details)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DigitTextField(
              label: 'Tenant ID',
              controller: _idController
            ),
            const SizedBox(height: 20),
            DigitElevatedButton(
              onPressed: _searchById,
              child: const Text('Search'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final result = _searchResults[index];
                  return DigitCard(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Baby Details',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 30, // Adjust the width as needed
                                    height: 30, // Adjust the height as needed
                                    child: ElevatedButton(
                                      onPressed: () {
                                        _navigateToFormsScreen(result);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.transparent), // Set background color to transparent
                                        foregroundColor: MaterialStateProperty.all(Colors.black), // Set icon color
                                      ),
                                      child: const Icon(
                                        Icons.edit,
                                        size: 18, // Adjust the size as needed
                                        color: Colors.black, // Set icon color
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),
                          _buildDetailRow('Baby First Name', result.babyFirstName),
                          _buildDetailRow('Doctor Name', result.doctorName),
                          _buildDetailRow('Father', result.father),
                          _buildDetailRow('Hospital Name', result.hospitalName),
                          _buildDetailRow('Mother', result.mother),
                          _buildDetailRow('Place of Birth', result.placeOfBirth),
                          _buildDetailRow('Tenant ID', result.tenantId),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            DigitElevatedButton(
              onPressed: () => _navigateToFormsScreen(null),
              child: const Text('Register New Birth Registration'),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildDetailRow(String heading, String value) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            heading,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            value,
          ),
        ),
      ],
    );
  }
}

