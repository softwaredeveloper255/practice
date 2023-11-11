import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:practice/homepage.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  _MyFormState() {
    _selectedval = _agentlist[0];
  }

  final TextEditingController _date = TextEditingController();

  final _agentlist = [
    'HDFC BANK',
    'BANK OF BARODA',
    'State Bank of India',
    'LIC'
  ];
  String? _selectedval = "LIC";

  // final _value = "_1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Lets Get Started', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            child: ListView(shrinkWrap: true, children: [
              const Text('Name'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                style: TextStyle(height: 0.2),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Full Name',
                    suffixIcon: Icon(Icons.account_circle)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Insurance Agent'),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'agent'
                ),
                value: _selectedval,
                items: _agentlist.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedval = val as String;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Email'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                style: TextStyle(height: 0.3),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Mail',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Phone'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                style: TextStyle(height: 0.3),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your phone',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Date of Birth'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                style: const TextStyle(height: 0.3),
                controller: _date,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Date Of Birth',
                  suffixIcon: Icon(Icons.calendar_month),
                ),
                onTap: () async {
                  DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101));

                  if (pickeddate != null) {
                    setState(() {
                      _date.text = DateFormat('yyyy-mm-dd').format(pickeddate);
                    });
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Select State'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                style: TextStyle(height: 0.3),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Select State',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Invite By Someone ?'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                style: TextStyle(height: 0.3),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Referral code',
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
