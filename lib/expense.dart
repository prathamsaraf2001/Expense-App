import 'dart:io';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'password_model.dart';

class Expense extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;

  const Expense({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String text8 = text7.toString();

    // final inttext = int.parse(text1);
    // final balance = inttext + inttext;
    // String finalbalance = balance.toString();

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Expense(
                            text1: '',
                            text2: '',
                            text3: '',
                            text4: '',
                            text5: '',
                            text6: '',
                          ),
                        ));
                  },
                  icon: Image.asset("assets/icons/home.png"),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotesPage(),
                        ));
                  },
                  icon: Image.asset("assets/icons/money.png"),
                ),
                Spacer(),
                // FloatingActionButton(
                //   mini: false,
                //   backgroundColor: Colors.teal[400],
                //   onPressed: () {
                //     // _settingModalBottomSheet(context);
                //   },
                //   child: Icon(Icons.add),
                // ),
                // Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/graph.png"),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/user.png"),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 35,
            left: 5,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Pratham",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          // Column(
          //   children: [
          //     SizedBox(
          //       height: MediaQuery.of(context).size.height * 0.14,
          //     ),
          //     Container(
          //       alignment: Alignment.topCenter,
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.circular(40),
          //         child: Container(
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Text(
          //                 "Total Balance",
          //                 style: TextStyle(
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold,

          //                   // fontSize: 25,
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: MediaQuery.of(context).size.height * 0.01,
          //               ),
          //               Text(
          //                 "₹" + text1 + text4,
          //                 style: TextStyle(
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 40,
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: MediaQuery.of(context).size.height * 0.05,
          //               ),
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text(
          //                         "Income",
          //                         style: TextStyle(
          //                           color: Colors.white,
          //                           fontWeight: FontWeight.bold,

          //                           // fontSize: 25,
          //                         ),
          //                       ),
          //                       Text(
          //                         "₹" + text4,
          //                         style: TextStyle(
          //                           color: Colors.white,
          //                           fontWeight: FontWeight.bold,
          //                           fontSize: 25,
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                   SizedBox(
          //                     width: MediaQuery.of(context).size.width * 0.25,
          //                   ),
          //                   Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text(
          //                         "Expense",
          //                         style: TextStyle(
          //                           color: Colors.white,
          //                           fontWeight: FontWeight.bold,

          //                           // fontSize: 25,
          //                         ),
          //                       ),
          //                       Text(
          //                         "₹" + text1,
          //                         style: TextStyle(
          //                           color: Colors.white,
          //                           fontWeight: FontWeight.bold,
          //                           fontSize: 25,
          //                         ),
          //                       ),
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ],
          //           ),
          //           color: Colors.lightBlue[200],
          //           height: MediaQuery.of(context).size.height * 0.3,
          //           width: MediaQuery.of(context).size.width * 0.9,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Positioned(
            top: 120,
            left: MediaQuery.of(context).size.width * 0.18,
            child: CircularPercentIndicator(
              radius: 220.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.599,
              center: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Text(
                    "Saved this Month",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 10.0,
                        color: Colors.white),
                  ),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.48,
                      color: Colors.transparent,
                      child: AutoSizeText(
                        "₹5999.00",
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 180,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              footer: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "₹10,000",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Colors.white),
                  ),
                  Text(
                    "Monthly Target",
                    style: new TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 10.0,
                        color: Colors.white),
                  ),
                ],
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.555,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Container(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Balance",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,

                                  // fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Text(
                                "₹" + text1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  color: Colors.lightBlue[200],
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.675,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Container(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Expense",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,

                                  // fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Text(
                                "₹" + text1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  color: Colors.lightBlue[200],
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.795,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Container(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Income",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,

                                  // fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Text(
                                "₹" + text1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  color: Colors.lightBlue[200],
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
            ),
          ),
          // Positioned(
          //   bottom: MediaQuery.of(context).size.height * 0.05,
          //   child: Container(
          //     color: Colors.transparent,
          //     height: MediaQuery.of(context).size.height * 0.5,
          //     width: MediaQuery.of(context).size.width * 1,
          //   ),
          // ),
          // Positioned(
          //   bottom: MediaQuery.of(context).size.height * 0.0,
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       color: Colors.white,
          //       height: MediaQuery.of(context).size.height * 0.07,
          //       width: MediaQuery.of(context).size.width * 1,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height * 0.89,
          //   left: MediaQuery.of(context).size.width * 0.43,
          //   child: IconButton(
          //     padding: EdgeInsets.all(0.0),
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => Add(),
          //           ));
          //     },
          //     icon: Image.asset(
          //       "assets/icons/add.png",
          //       height: 200,
          //     ),
          //   ),
          // ),
        ],
      ),
      // appBar: AppBar(
      //   title: Text("Welcome"),
      // ),
    );
  }
}

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.fromLTRB(80, 20, 80, 20)),
          onPressed: () {},
          child: Text("  Add Income  "),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
          ),
          onPressed: () {},
          child: Text("Add Expenses"),
        ),
      ],
    );
  }
}

// this page is for adding expenses//

class AddExpense extends StatefulWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  _AddExpenseState createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  final controller = PageController(initialPage: 0);
  GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();

  TextEditingController expenseController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController incomeController = TextEditingController();

  String _valueChanged = '';
  String _valueToValidate = '';
  String _valueSaved = '';

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'boxValue',
      'label': 'Food',
      'icon': Icon(Icons.food_bank),
    },
    {
      'value': 'circleValue',
      'label': 'Entertainment',
      'icon': Icon(Icons.theater_comedy),
      'textStyle': TextStyle(color: Colors.black),
    },
    {
      'value': 'Travel',
      'label': 'Travel',
      'icon': Icon(Icons.flight),
    },
    {
      'value': 'shopping',
      'label': 'Shopping',
      'icon': Icon(Icons.shopping_bag),
    },
    {
      'value': 'insurance',
      'label': 'Insurance',
      'icon': Icon(Icons.document_scanner),
    },
    {
      'value': 'donations',
      'label': 'Donations',
      'icon': Icon(Icons.money),
    },
    {
      'value': 'medical',
      'label': 'Medical',
      'icon': Icon(Icons.medical_services),
    },
    {
      'value': 'fees',
      'label': 'Fees',
      'icon': Icon(Icons.money),
    },
    {
      'value': 'phonebills',
      'label': 'Phone Bills',
      'icon': Icon(Icons.phone),
    },
    {
      'value': 'tax',
      'label': 'Tax',
      'icon': Icon(Icons.money),
    },
    {
      'value': 'stationary',
      'label': 'Stationary',
      'icon': Icon(Icons.brush),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "Add Expenses",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
                  child: TextFormField(
                    controller: expenseController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          gapPadding: 2,
                          borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          gapPadding: 4,
                          borderSide: BorderSide()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add Income",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
                  child: TextFormField(
                    controller: incomeController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          gapPadding: 2,
                          borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          gapPadding: 4,
                          borderSide: BorderSide()),
                    ),
                  ),
                ),
                Form(
                  key: _oFormKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                        child: SelectFormField(
                          controller: categoryController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            // enabledBorder: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(20),
                            //     gapPadding: 2,
                            //     borderSide: BorderSide()),
                            // focusedBorder: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(20),
                            //     gapPadding: 4,
                            //     borderSide: BorderSide()),
                            hintText: '   Category',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Image.asset(
                              "assets/icons/category.png",
                              scale: 20,
                            ),
                          ),
                          type: SelectFormFieldType.dialog,
                          //initialValue: _initialValue,
                          icon: Icon(Icons.format_shapes),

                          changeIcon: true,
                          dialogTitle: 'Pick a item',
                          dialogCancelBtn: 'CANCEL',
                          enableSearch: true,
                          dialogSearchHint: 'Search item',
                          items: _items,
                          onChanged: (val) =>
                              setState(() => _valueChanged = val),
                          validator: (val) {
                            setState(() => _valueToValidate = val ?? '');
                            return null;
                          },
                          onSaved: (val) =>
                              setState(() => _valueSaved = val ?? ''),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: TextFormField(
                          controller: noteController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            hintText: 'Note',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Image.asset(
                              "assets/icons/notes.png",
                              scale: 19,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: DateTimePicker(
                          type: DateTimePickerType.date,
                          dateMask: 'd MMM, yyyy',
                          initialValue: DateTime.now().toString(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                          icon: Image.asset(
                            "assets/icons/calendar.png",
                            scale: 20,
                          ),
                          dateLabelText: 'Date',
                          timeLabelText: "Hour",
                          selectableDayPredicate: (date) {
                            // Disable weekend days to select from the calendar
                            if (date.weekday == 6 || date.weekday == 7) {
                              return false;
                            }

                            return true;
                          },
                          onChanged: (val) => print(val),
                          validator: (val) {
                            print(val);
                            return null;
                          },
                          onSaved: (val) => print(val),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                  ),
                  onPressed: () {
                    _sendDataToSecondScreen(context);
                  },
                  child: Text("Save"),
                ),
              ],
            ),
          ),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  void _sendDataToSecondScreen(BuildContext context) {
    String expense = expenseController.text;
    String category = categoryController.text;
    String note = noteController.text;
    String income = incomeController.text;

    // int inttext = int.parse(expenseController.text);
    // int hello = int.parse('expenseController') + int.parse('2');
    // String passit = hello.toString();

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Expense(
            text1: expense,
            text2: category,
            text3: note,
            text4: income,
            text5: '',
            text6: '',
          ),
        ));
  }
}

class NotesPage extends StatefulWidget {
  NotesPage({Key? key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

final controller = PageController(initialPage: 0);
GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();

TextEditingController expenseController = TextEditingController();
TextEditingController categoryController = TextEditingController();
TextEditingController noteController = TextEditingController();
TextEditingController dateController = TextEditingController();
TextEditingController incomeController = TextEditingController();

String _valueChanged = '';
String _valueToValidate = '';
String _valueSaved = '';

final List<Map<String, dynamic>> _items = [
  {
    'value': 'Food',
    'label': 'Food',
    'icon': Icon(Icons.food_bank),
  },
  {
    'value': 'Entertainment',
    'label': 'Entertainment',
    'icon': Icon(Icons.theater_comedy),
    'textStyle': TextStyle(color: Colors.black),
  },
  {
    'value': 'Travel',
    'label': 'Travel',
    'icon': Icon(Icons.flight),
  },
  {
    'value': 'Shopping',
    'label': 'Shopping',
    'icon': Icon(Icons.shopping_bag),
  },
  {
    'value': 'Insurance',
    'label': 'Insurance',
    'icon': Icon(Icons.document_scanner),
  },
  {
    'value': 'Donations',
    'label': 'Donations',
    'icon': Icon(Icons.money),
  },
  {
    'value': 'Medical',
    'label': 'Medical',
    'icon': Icon(Icons.medical_services),
  },
  {
    'value': 'Fees',
    'label': 'Fees',
    'icon': Icon(Icons.money),
  },
  {
    'value': 'Phonebills',
    'label': 'Phone Bills',
    'icon': Icon(Icons.phone),
    'iconv': Icon(Icons.phone),
  },
  {
    'value': 'Tax',
    'label': 'Tax',
    'icon': Icon(Icons.money),
  },
  {
    'value': 'Stationary',
    'label': 'Stationary',
    'icon': Icon(Icons.brush),
  },
];

class _NotesPageState extends State<NotesPage> {
  var _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    notesDescriptionMaxLenth =
        notesDescriptionMaxLines * notesDescriptionMaxLines;
  }

  @override
  void dispose() {
    noteDescriptionController.dispose();
    noteHeadingController.dispose();
    noteUsernameController.dispose();
    incomeController.dispose();
    expenseController.dispose();
    super.dispose();
  }

  @override
  bool _isObscure1 = true;
  Future<bool> _onBackPressed() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => exit(0),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.black,
        endDrawer: Container(
          width: 250,
        ),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.teal[500]),
          title: notesHeader(),
        ),
        //
        body: noteHeading.length > 0
            ? buildNotes()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "  Add your Expenses.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "  You can add income or expenses here.   ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                ],
              ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Expense(
                              text1: '',
                              text2: '',
                              text3: '',
                              text4: '',
                              text5: '',
                              text6: '',
                            ),
                          ));
                    },
                    icon: Image.asset("assets/icons/home.png"),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotesPage(),
                          ));
                    },
                    icon: Image.asset("assets/icons/money.png"),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    mini: false,
                    backgroundColor: Colors.teal[400],
                    onPressed: () {
                      _settingModalBottomSheet(context);
                    },
                    child: Icon(Icons.add),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/graph.png"),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/user.png"),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNotes() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      child: new ListView.builder(
        itemCount: noteHeading.length,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5.5),
            child: new Dismissible(
              key: UniqueKey(),
              direction: DismissDirection.horizontal,
              onDismissed: (direction) {
                setState(() {
                  deletedNoteHeading = noteHeading[index];
                  deletedNoteDescription = noteDescription[index];
                  deletedNoteUsername = noteUsername[index];
                  noteHeading.removeAt(index);
                  noteDescription.removeAt(index);
                  noteUsername.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                    new SnackBar(
                      backgroundColor: Colors.purple,
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          new Text(
                            "Note Deleted",
                            style: TextStyle(),
                          ),
                          deletedNoteHeading != ""
                              ? GestureDetector(
                                  onTap: () {
                                    print("undo");
                                    setState(() {
                                      if (deletedNoteHeading != "") {
                                        noteHeading.add(deletedNoteHeading);
                                        noteDescription
                                            .add(deletedNoteDescription);
                                        noteUsername.add(deletedNoteUsername);
                                      }
                                      deletedNoteHeading = "";
                                      deletedNoteUsername = "";
                                      deletedNoteDescription = "";
                                    });
                                  },
                                  child: new Text(
                                    "Undo",
                                    style: TextStyle(),
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  );
                });
              },
              background: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.red[600],
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          Text(
                            "Delete",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              secondaryBackground: ClipRRect(
                borderRadius: BorderRadius.circular(5.5),
                child: Container(
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          Text(
                            "Delete",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              child: noteList(index),
            ),
          );
        },
      ),
    );
  }

  Widget noteList(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        child: Container(
          // width: MediaQuery.of(context).size.width / 2,
          width: double.infinity,
          decoration: BoxDecoration(
            color: noteColor[(index % noteColor.length).floor()],
            borderRadius: BorderRadius.circular(20),
          ),
          height: 100,
          child: Center(
            child: Row(
              children: [
                new Container(
                  color:
                      noteMarginColor[(index % noteMarginColor.length).floor()],
                  width: 2.5,
                  height: double.infinity,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    child: new Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              height: 90,
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width * 0.13,
                              top: 20,
                              child: Container(
                                child: Text(
                                  noteHeading[index],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 25.00,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 17.5,
                            ),
                            Positioned(
                              top: 53,
                              left: MediaQuery.of(context).size.width * 0.13,
                              child: Container(
                                width: 170,
                                child: AutoSizeText(
                                  noteUsername[index],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13.00,
                                    color: Colors.blueGrey[500],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Positioned(
                                        right: 80,
                                        top: 10,
                                        child: Text(
                                          "₹",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 25.00,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          AutoSizeText(
                                            noteExpense[index] + "  ",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 30.00,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          AutoSizeText(
                                            noteIncome[index] + "  ",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 30.00,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(),
                            AutoSizeText(
                              "${(noteDescription[index])}",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 25.00,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        onDoubleTap: () {
          Navigator.pushNamed(
            context,
            "/OpenPassword",
          );
        },
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      isScrollControlled: true,
      elevation: 50,
      isDismissible: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext bc) {
        return Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: (MediaQuery.of(context).size.height),
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 0, top: 20),
                  child: new Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "  Add Expense",
                            style: TextStyle(
                              fontSize: 25.00,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ProximaSoft',
                              color: Colors.teal[400],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  noteHeading.add(noteHeadingController.text);
                                  noteUsername.add(noteUsernameController.text);
                                  noteDescription
                                      .add(noteDescriptionController.text);
                                  noteIncome.add(incomeController.text);
                                  noteHeadingController.clear();
                                  noteExpense.add(expenseController.text);
                                  noteDescriptionController.clear();
                                  noteUsernameController.clear();
                                });
                                Navigator.pop(context);
                              }
                              print("Notes.dart LineNo:239");
                              print(noteHeadingController.text);
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  // Image.asset(
                                  //   "assets/icons/checkmark.png",
                                  //   scale: 10,
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.teal[400],
                        thickness: 2.5,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //
                      Text(
                        "Add Expenses",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
                        child: TextFormField(
                          onFieldSubmitted: (String value) {
                            FocusScope.of(context)
                                .requestFocus(textSecondFocusNode);
                          },
                          controller: expenseController,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            focusColor: Colors.white,
                            contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              gapPadding: 2,
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              gapPadding: 4,
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Add Income",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
                        child: TextFormField(
                          controller: incomeController,
                          onFieldSubmitted: (String value) {
                            FocusScope.of(context)
                                .requestFocus(textSecondFocusNode);
                          },
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            focusColor: Colors.white,
                            contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              gapPadding: 2,
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              gapPadding: 4,
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Form(
                        key: _oFormKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                              child: SelectFormField(
                                onFieldSubmitted: (String value) {
                                  FocusScope.of(context)
                                      .requestFocus(textSecondFocusNode);
                                },
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: noteHeadingController,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    gapPadding: 2,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    gapPadding: 4,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  // focusedBorder: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(20),
                                  //     gapPadding: 4,
                                  //     borderSide: BorderSide()),
                                  hintText: '   Category',
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  prefixIcon: Image.asset(
                                    "assets/icons/category.png",
                                    scale: 20,
                                  ),
                                ),
                                type: SelectFormFieldType.dialog,
                                //initialValue: _initialValue,
                                icon: Icon(Icons.format_shapes),

                                changeIcon: true,
                                dialogTitle: 'Pick a item',
                                dialogCancelBtn: 'CANCEL',
                                enableSearch: true,
                                dialogSearchHint: 'Search item',
                                items: _items,
                                onChanged: (val) =>
                                    setState(() => _valueChanged = val),
                                validator: (val) {
                                  setState(() => _valueToValidate = val ?? '');
                                  return null;
                                },
                                onSaved: (val) =>
                                    setState(() => _valueSaved = val ?? ''),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(25, 10, 25, 10),
                              child: TextFormField(
                                onFieldSubmitted: (String value) {
                                  FocusScope.of(context)
                                      .requestFocus(textSecondFocusNode);
                                },
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: noteUsernameController,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  hintText: '   Note',
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    gapPadding: 2,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    gapPadding: 4,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  prefixIcon: Image.asset(
                                    "assets/icons/notes.png",
                                    scale: 19,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.005,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(25, 10, 25, 10),
                              child: DateTimePicker(
                                type: DateTimePickerType.date,
                                dateMask: 'd MMM, yyyy',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    gapPadding: 2,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    gapPadding: 4,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  prefixIcon: Image.asset(
                                    "assets/icons/calendar.png",
                                    scale: 20,
                                  ),
                                ),
                                initialValue: DateTime.now().toString(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                                icon: Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Image.asset(
                                    "assets/icons/calendar.png",
                                    scale: 20,
                                  ),
                                ),
                                dateLabelText: 'Date',
                                timeLabelText: "Hour",
                                selectableDayPredicate: (date) {
                                  // Disable weekend days to select from the calendar
                                  if (date.weekday == 6 || date.weekday == 7) {
                                    return false;
                                  }

                                  return true;
                                },
                                onChanged: (val) => print(val),
                                validator: (val) {
                                  print(val);
                                  return null;
                                },
                                onSaved: (val) => print(val),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              noteHeading.add(noteHeadingController.text);
                              noteUsername.add(noteUsernameController.text);
                              noteDescription
                                  .add(noteDescriptionController.text);
                              noteIncome.add(incomeController.text);
                              noteHeadingController.clear();
                              noteExpense.add(expenseController.text);

                              noteDescriptionController.clear();
                              noteUsernameController.clear();
                            });
                            Navigator.pop(context);
                          }
                          print("Notes.dart LineNo:239");
                          print(noteHeadingController.text);
                          print(expenseController.text);
                        },
                        child: Text(
                          'Save',
                          softWrap: false,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal[300],
                          textStyle: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              fontFamily: "ProximaSoft"),
                          padding: EdgeInsets.symmetric(
                              horizontal: 125, vertical: 14),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(
                              20,
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 80,
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _isObscure {}

Widget notesHeader() {
  return Column(
    children: [
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          Text(
            "Good Day",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.teal[400],
              fontSize: 15.00,
              fontWeight: FontWeight.bold,
              fontFamily: 'ProximaSoft',
            ),
          ),
          SizedBox(
            width: 90,
          )
        ],
      ),
      Row(
        children: [
          Text(
            "Pratham Saraf",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.teal[400],
              fontSize: 20.00,
              fontWeight: FontWeight.bold,
              fontFamily: 'ProximaSoft',
            ),
          ),
          SizedBox(
            width: 90,
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Divider(
        color: Colors.teal[400],
        thickness: 2.5,
      ),
    ],
  );
}
