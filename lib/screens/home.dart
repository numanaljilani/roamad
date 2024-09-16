import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2; // Center option F
  DateTime? _selectedDate;
  String? _selectedTravelType;
  String? _selectedBudget;
  String? _selectedGroup;

  // Method for showing DatePicker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Row(
              children: [
                Text("R" , style: GoogleFonts.kronaOne(textStyle : TextStyle(color: Color(0xFFFF5475))),),
                Text("omad.Ai", style: GoogleFonts.kronaOne(textStyle : TextStyle(fontSize:  15.0)),),
              ],
            ),
            Spacer(),
            CircleAvatar(
              backgroundImage:
                  AssetImage('assets/user_image.png'), // User profile image
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icons for finding options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.train),
                    onPressed: () {},
                    tooltip: 'Trains',
                  ),
                  IconButton(
                    icon: Icon(Icons.flight),
                    onPressed: () {},
                    tooltip: 'Flights',
                  ),
                  IconButton(
                    icon: Icon(Icons.hotel),
                    onPressed: () {},
                    tooltip: 'Hotels',
                  ),
                  IconButton(
                    icon: Icon(Icons.directions_car),
                    onPressed: () {},
                    tooltip: 'Cars',
                  ),
                ],
              ),
              SizedBox(height: 20),

              // "What are you dreaming of?" Text
              Text(
                "What are you dreaming of? Let’s plan it with",
                style: GoogleFonts.kronaOne(textStyle : TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 20),

              // From and To Input fields
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'From',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'To',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Select date row with date picker
              GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: _selectedDate == null
                          ? 'Select Date'
                          : "DateFormat.yMMMd().format(_selectedDate!)",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Travel type selection (adventure, chill, business, other)
              Text("Type", style: GoogleFonts.kronaOne(textStyle : TextStyle(fontSize: 14))),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildChoiceChip('Adventure', _selectedTravelType),
                  _buildChoiceChip('Chill', _selectedTravelType),
                  _buildChoiceChip('Business', _selectedTravelType),
                  _buildChoiceChip('Other', _selectedTravelType),
                ],
              ),
              SizedBox(height: 20),

              // Budget selection
              Text("Budget" , style: GoogleFonts.kronaOne(textStyle : TextStyle(fontSize: 14))),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildBudgetChip('Economy', _selectedBudget),
                  _buildBudgetChip('Standard', _selectedBudget),
                  _buildBudgetChip('Luxury', _selectedBudget),
                ],
              ),
              SizedBox(height: 20),

              // Plan with (family, friends, solo)
              Text("With" , style: GoogleFonts.kronaOne(textStyle : TextStyle(fontSize: 14))),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildGroupChip('Family', _selectedGroup),
                  _buildGroupChip('Friends', _selectedGroup),
                  _buildGroupChip('Solo', _selectedGroup),
                ],
              ),
              SizedBox(height: 20),

              // Full-width button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add action on button press
                  },
                  child: Text("Plan" , style: GoogleFonts.kronaOne(textStyle : TextStyle(fontSize: 18 , color: Colors.white))),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Color(0xFFFF5475), // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Plan Trip',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 40), // Central "F" icon
            label: 'F',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Tribes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'My Trips',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFFF5475),
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _buildChoiceChip(String label, String? selectedValue) {
    return ChoiceChip(
      label: Text(label),
      selected: _selectedTravelType == label,
      onSelected: (bool selected) {
        setState(() {
          _selectedTravelType = selected ? label : null;
        });
      },
      selectedColor: Color(0xFFFF5475), // Selected color
    );
  }

  Widget _buildBudgetChip(String label, String? selectedValue) {
    return ChoiceChip(
      label: Text(label),
      selected: _selectedBudget == label,
      onSelected: (bool selected) {
        setState(() {
          _selectedBudget = selected ? label : null;
        });
      },
      selectedColor: Color(0xFFFF5475), // Selected color
    );
  }

  Widget _buildGroupChip(String label, String? selectedValue) {
    return ChoiceChip(
      label: Text(label),
      selected: _selectedGroup == label,
      onSelected: (bool selected) {
        setState(() {
          _selectedGroup = selected ? label : null;
        });
      },
      selectedColor: Color(0xFFFF5475), // Selected color
    );
  }
}
