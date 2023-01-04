import 'package:flutter/material.dart';
import 'package:resume/Global.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  GlobalKey<FormState> priyanshi = GlobalKey<FormState>();
  TextEditingController degreecontroller =
  TextEditingController(text: Globals.degree);
  TextEditingController clgcontroller =
  TextEditingController(text: Globals.clg);
  TextEditingController percontroller =
  TextEditingController(text: (Globals.per!=null)?Globals.per.toString():null);
  TextEditingController yearcontroller =
  TextEditingController(text: (Globals.year!=null)?Globals.year.toString():null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400),),
        toolbarHeight: 150,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 1.6,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Form(
              key: priyanshi,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Course/Degree",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: degreecontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Latest Degree ",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey),),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Degree ";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.degree = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "School/College/Institute",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: clgcontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter University Name",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter School/Clg/Institute Name ";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.clg = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Percentage",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: percontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "70% or 7.0 CGPA",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Your Result";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.per = double.parse(val!);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Year Of Pass",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: yearcontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "2019",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Passing Year ";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.year = int.parse(val!);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: (() {
                            if (priyanshi.currentState!.validate()) {
                              priyanshi.currentState!.save();
                            }
                          }),
                          child: const Text("Submit")),
                      OutlinedButton(
                        onPressed: () {
                          priyanshi.currentState!.reset();
                          setState(() {
                            degreecontroller.clear();
                            clgcontroller.clear();
                            percontroller.clear();
                            yearcontroller.clear();

                            Globals.degree = null;
                            Globals.clg = null;
                            Globals.per = null;
                            Globals.year = null;
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
      backgroundColor: Colors.grey.shade200,
    );
  }
}