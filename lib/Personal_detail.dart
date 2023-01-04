import 'package:flutter/material.dart';
import 'package:resume/Global.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  bool checkboxval = false;

  GlobalKey<FormState> priyanshi = GlobalKey<FormState>();
  TextEditingController datecontroller =
  TextEditingController(text: Globals.date);
  TextEditingController maritalcontroller =
  TextEditingController(text: Globals.Marriedstatus);
  TextEditingController singlecontroller =
  TextEditingController(text: Globals.single);
  TextEditingController marriedcontroller =
  TextEditingController(text: Globals.Married);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Personal Details",
          style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        toolbarHeight: 150,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 1.4,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Form(
                key: priyanshi,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "DOB",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: datecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "DD/MM/YY",
                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Date as a Format";
                        }
                      },
                      onSaved: (val) {
                        setState(() {
                          Globals.date = val;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Marital Status",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        children: [
                          Radio(
                              value: Globals.single,
                              groupValue: Globals.Marriedstatus,
                              onChanged: (val) {
                                setState(() {
                                  Globals.Marriedstatus = val!;
                                });
                              }),
                          const Text(
                            "Single",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        children: [
                          Radio(
                              value: Globals.Married,
                              groupValue: Globals.Marriedstatus,
                              onChanged: (val) {
                                setState(() {
                                  Globals.Marriedstatus = val!;
                                });
                              }),
                          const Text(
                            "Married",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Languages Known",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        children: [
                          Checkbox(
                            value: Globals.english,
                            onChanged: (val) {
                              setState(() {
                                Globals.english = val!;
                              });
                            },
                          ),
                          const Text(
                            "English",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        children: [
                          Checkbox(
                            value: Globals.hindi,
                            onChanged: (val) {
                              setState(() {
                                Globals.hindi = val!;
                              });
                            },
                          ),
                          const Text(
                            "Hindi",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        children: [
                          Checkbox(
                            value: Globals.gujarati,
                            onChanged: (val) {
                              setState(() {
                                Globals.gujarati = val!;
                              });
                            },
                          ),
                          const Text(
                            "Gujarati",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Nationality",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.blue,
                      child: DropdownButton(
                        iconSize: 40,
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),

                        value: Globals.country,
                        hint: const Text("Select Country"),
                        items: const [
                          DropdownMenuItem(
                            value: "India",
                            child: Text("India"),
                          ),
                          DropdownMenuItem(
                            value: "Australia",
                            child: Text("Australia"),
                          ),
                          DropdownMenuItem(
                            value: "England",
                            child: Text("England"),
                          ),
                          DropdownMenuItem(
                            value: "America",
                            child: Text("America"),
                          ),
                        ],
                        onChanged: (val) {
                          setState(() {
                            Globals.country = val!;
                          });
                        },
                        isExpanded: true,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (() {
                              if (priyanshi.currentState!.validate()) {
                                priyanshi.currentState!.save();
                              }
                            }),
                            child: const Text("Save")),
                        OutlinedButton(
                          onPressed: () {
                            priyanshi.currentState!.reset();
                            setState(() {
                              datecontroller.clear();
                              maritalcontroller.clear();
                              singlecontroller.clear();
                              marriedcontroller.clear();

                              Globals.date = null;
                              Globals.Marriedstatus = null;

                            });
                          },
                          child: const Text("Reset"),
                        )
                      ],
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