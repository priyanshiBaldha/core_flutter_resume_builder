import 'package:flutter/material.dart';
import 'package:resume/Global.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  GlobalKey<FormState> priyanshi = GlobalKey<FormState>();
  TextEditingController prnamecontroller =
      TextEditingController(text: Globals.prname);
  TextEditingController prrolecontroller =
      TextEditingController(text: Globals.prrole);
  TextEditingController prteccontroller =
      TextEditingController(text: Globals.prtec);
  TextEditingController prdescontroller =
      TextEditingController(text: Globals.prdes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Projects",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        toolbarHeight: 150,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 1.3,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Form(
              key: priyanshi,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Project Title",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: prnamecontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Resume Builder App",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Project Name";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.prname = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Technologies",
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
                          value: Globals.c,
                          onChanged: (val) {
                            setState(() {
                              Globals.c = val!;
                            });
                          },
                        ),
                        const Text(
                          "C Programing",
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
                          value: Globals.cplusplus,
                          onChanged: (val) {
                            setState(() {
                              Globals.cplusplus = val!;
                            });
                          },
                        ),
                        const Text(
                          "C++",
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
                          value: Globals.flutter,
                          onChanged: (val) {
                            setState(() {
                              Globals.flutter = val!;
                            });
                          },
                        ),
                        const Text(
                          "Flutter",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Roles",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: prrolecontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Organize team member,code analysis",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Your Role";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.prrole = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Technologies",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: prteccontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "5 - Programmers",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Technologies";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.prtec = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Project Description",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: prdescontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Add Description",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Project Description";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.prdes = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 18,
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
                            setState(() {
                              prnamecontroller.clear();
                              prrolecontroller.clear();
                              prteccontroller.clear();
                              prdescontroller.clear();
                            });
                          }),
                          child: const Text("Save")),
                      OutlinedButton(
                        onPressed: () {
                          priyanshi.currentState!.reset();
                          setState(() {
                            prnamecontroller.clear();
                            prrolecontroller.clear();
                            prteccontroller.clear();
                            prdescontroller.clear();
                            Globals.prname = null;
                            Globals.prrole = null;
                            Globals.prtec = null;
                            Globals.prdes = null;
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
