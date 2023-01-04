import 'package:flutter/material.dart';
import 'package:resume/Global.dart';

class References extends StatefulWidget {
  const References({super.key});

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  GlobalKey<FormState> priyanshi = GlobalKey<FormState>();
  TextEditingController refnamecontroller =
  TextEditingController(text: Globals.refname);
  TextEditingController refdescontroller =
  TextEditingController(text: Globals.refdes);
  TextEditingController reforgcontroller =
  TextEditingController(text: Globals.reforg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("References",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400),),
        centerTitle: true,
        toolbarHeight: 150,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              
              child: Form(
                key: priyanshi,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Reference Name",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: refnamecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Priyanshi Baldha",
                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Reference Name";
                        }
                      },
                      onSaved: (val) {
                        setState(() {
                          Globals.refname = val;
                        });
                      },
                    ),
                    const SizedBox(height: 15,),
                    const Text(
                      "Designation",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: refdescontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Marketing MAnager, ID:111",
                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Designation Of Reference";
                        }
                      },
                      onSaved: (val) {
                        setState(() {
                          Globals.refdes = val;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Organisation/Institute",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: reforgcontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Green Energy Pvt. Ltd.",
                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Organnisation Name";
                        }
                      },
                      onSaved: (val) {
                        setState(() {
                          Globals.reforg = val;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                            child: Text("Save")),
                        OutlinedButton(
                          onPressed: () {
                            priyanshi.currentState!.reset();
                            setState(() {
                              refnamecontroller.clear();
                              refdescontroller.clear();
                              reforgcontroller.clear();

                              Globals.refname = null;
                              Globals.refdes = null;
                              Globals.reforg= null;

                            });
                          },
                          child: const Text("Reset"),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}