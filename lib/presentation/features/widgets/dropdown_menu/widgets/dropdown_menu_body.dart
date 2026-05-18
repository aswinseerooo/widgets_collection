import 'package:flutter/material.dart';
import 'package:widgets_collection/domain/entities/enums/enums.dart';
import 'package:widgets_collection/presentation/components/styles/common_input_decoration.dart';

import 'dropdown_menu_explanation_section.dart';

class DropdownMenuBody extends StatefulWidget {
  const DropdownMenuBody({super.key});

  @override
  State<DropdownMenuBody> createState() => _DropdownMenuBodyState();
}

class _DropdownMenuBodyState extends State<DropdownMenuBody> {
  Fruit? selectedFruit = Fruit.apple;
  Transport? selectedTransport = Transport.car;
  Country? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const DropdownMenuExplanationSection(),

        const SizedBox(height: 20),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Basic DropdownMenu",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DropdownMenu<Fruit>(
            initialSelection: selectedFruit,
            textStyle: const TextStyle(color: Colors.white),
            inputDecorationTheme: CommonInputDecoration.dropdown,
            onSelected: (value) {
              setState(() {
                selectedFruit = value;
              });
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: Fruit.apple, label: "Apple"),
              DropdownMenuEntry(value: Fruit.banana, label: "Banana"),
              DropdownMenuEntry(value: Fruit.orange, label: "Orange"),
            ],
          ),
        ),

        const SizedBox(height: 30),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "DropdownMenu with Icons",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DropdownMenu<Transport>(
            initialSelection: selectedTransport,
            textStyle: const TextStyle(color: Colors.white),
            inputDecorationTheme: CommonInputDecoration.dropdown,
            onSelected: (value) {
              setState(() {
                selectedTransport = value;
              });
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(
                value: Transport.car,
                label: "Car",
                leadingIcon: Icon(Icons.directions_car),
              ),
              DropdownMenuEntry(
                value: Transport.bike,
                label: "Bike",
                leadingIcon: Icon(Icons.two_wheeler),
              ),
              DropdownMenuEntry(
                value: Transport.train,
                label: "Train",
                leadingIcon: Icon(Icons.train),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Searchable DropdownMenu",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DropdownMenu<Country>(
            enableSearch: true,
            enableFilter: true,
            requestFocusOnTap: true,
            hintText: "Search country",
            textStyle: const TextStyle(color: Colors.white),
            inputDecorationTheme: CommonInputDecoration.dropdown,
            initialSelection: selectedCountry,
            onSelected: (value) {
              setState(() {
                selectedCountry = value;
              });
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: Country.india, label: "India"),
              DropdownMenuEntry(value: Country.usa, label: "United States"),
              DropdownMenuEntry(value: Country.germany, label: "Germany"),
              DropdownMenuEntry(value: Country.japan, label: "Japan"),
              DropdownMenuEntry(value: Country.canada, label: "Canada"),
              DropdownMenuEntry(value: Country.australia, label: "Australia"),
              DropdownMenuEntry(value: Country.france, label: "France"),
              DropdownMenuEntry(value: Country.brazil, label: "Brazil"),
              DropdownMenuEntry(value: Country.italy, label: "Italy"),
              DropdownMenuEntry(value: Country.spain, label: "Spain"),
              DropdownMenuEntry(value: Country.china, label: "China"),
              DropdownMenuEntry(value: Country.russia, label: "Russia"),
              DropdownMenuEntry(
                value: Country.southAfrica,
                label: "South Africa",
              ),
              DropdownMenuEntry(value: Country.egypt, label: "Egypt"),
            ],
          ),
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}
