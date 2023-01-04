import 'package:flutter/material.dart';
import 'package:resume/Global.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  List<TextEditingController> skill = [];
  @override
  void initState() {
    super.initState();
    skill.add(TextEditingController());
    skill.add(TextEditingController());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Technical Skills",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400),),
          centerTitle: true,
          toolbarHeight: 150,
        ),
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Enter Your Skills",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ...skill
                            .map(
                              (e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  flex: 6,
                                  child: TextFormField(
                                    // key: akash,
                                    controller: e,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Your Skills";
                                      }
                                      return null;
                                    },
                                    onSaved: (Val) {
                                      setState(() {
                                        // Globals.technical = Val;
                                      });
                                    },
                                    decoration: const InputDecoration(
                                        hintText:
                                        "C Programming,Web Technical"),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        skill.remove(e);
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.delete_forever_outlined,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                              ],
                            ),
                          ),
                        )
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                child: OutlinedButton(
                  style: ButtonStyle(side: MaterialStateProperty.all(BorderSide(width: 3,color: Colors.black),),),
                  onPressed: () {
                    setState(() {
                      skill.add(TextEditingController());
                    });
                  },
                  child: const Icon(Icons.add,size: 45,color: Colors.black,),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      skill.forEach((e) {
                        Globals.Skills.add(e.text);
                      });
                      print(Globals.Skills);
                    });
                  },
                  child: const Text("Save"),
                ),
              )
            ],
          ),
        )
    );
  }
}