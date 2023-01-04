import 'package:flutter/material.dart';
import 'package:resume/Global.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  GlobalKey<FormState> priyanshi = GlobalKey<FormState>();
  TextEditingController companycontroller =
      TextEditingController(text: Globals.company);
  TextEditingController postcontroller =
      TextEditingController(text: Globals.post);
  TextEditingController rolecontroller =
      TextEditingController(text: Globals.role);
  TextEditingController djcontroller = TextEditingController(text: Globals.dj);
  TextEditingController decontroller = TextEditingController(text: Globals.de);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Experience",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        toolbarHeight: 150,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height / 1.4,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Form(
              key: priyanshi,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Company Name",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  TextFormField(
                    controller: companycontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "eg.Infosys",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Company Name ";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.company = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "School/College/Institute",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  TextFormField(
                    controller: postcontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "eg.Quality Test Engineer",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter School/Clg/Institute Name ";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.post = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Roles(Optional)",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  TextFormField(
                    controller: rolecontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "eg.Manager",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Your Result";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.role = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Employed Status",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        child: Row(
                          children: [
                            Radio(
                                value: Globals.pe,
                                groupValue: Globals.employe_status,
                                onChanged: (val) {
                                  setState(() {
                                    Globals.employe_status = val!;
                                  });
                                }),
                            const Text(
                              "Priviously Employed",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.blue,
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
                                value: Globals.ce,
                                groupValue: Globals.employe_status,
                                onChanged: (val) {
                                  setState(() {
                                    Globals.employe_status = val!;
                                  });
                                }),
                            const Text(
                              "Currenty Employed",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1.5,
                    color: Colors.black,
                  ),
                  (Globals.employe_status == Globals.pe)
                      ? Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "Date Joined",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter Your Joined date";
                                        }
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Globals.dj = val;
                                        });
                                      },
                                      controller: djcontroller,
                                      decoration: const InputDecoration(
                                          hintText: "  DD/MM/YYYY",
                                          hintStyle: TextStyle(height: 1),
                                          border: OutlineInputBorder()),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "Date Exit",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    child: TextFormField(
                                      controller: decontroller,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter Your Exit date";
                                        }
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Globals.de = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                          hintText: "  DD/MM/YYYY",
                                          hintStyle: TextStyle(height: 1),
                                          border: OutlineInputBorder()),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      : Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "Date Joined",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    child: TextFormField(
                                      controller: djcontroller,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter Your Joined date";
                                        }
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Globals.dj = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                          hintText: "  DD/MM/YYYY",
                                          hintStyle: TextStyle(height: 1),
                                          border: OutlineInputBorder()),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                  const SizedBox(
                    height: 15,
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
                            companycontroller.clear();
                            postcontroller.clear();
                            rolecontroller.clear();
                            djcontroller.clear();
                            decontroller.clear();

                            Globals.company = null;
                            Globals.post = null;
                            Globals.role = null;
                            Globals.dj = null;
                            Globals.de = null;
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
