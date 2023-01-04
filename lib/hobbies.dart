import 'package:flutter/material.dart';
import 'package:resume/Global.dart';

class Hobby extends StatefulWidget {
  const Hobby({super.key});

  @override
  State<Hobby> createState() => _HobbyState();
}

class _HobbyState extends State<Hobby> {
  List<TextEditingController> hobbycontroller = [];
  @override
  void initState() {
    super.initState();
    hobbycontroller.add(TextEditingController());
    hobbycontroller.add(TextEditingController());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hobby",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400),),
          centerTitle: true,
          toolbarHeight: 150,
        ),
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Enter Your Hobby",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ...hobbycontroller
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
                                        return "Enter Your Hobby";
                                      }
                                      return null;
                                    },
                                    onSaved: (Val) {
                                      setState(() {
                                        // Globals.interest = Val;
                                      });
                                    },
                                    decoration: const InputDecoration(
                                        hintText:
                                        "Eg.Reading"),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        hobbycontroller.remove(e);
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
                  style: ButtonStyle(side: MaterialStateProperty.all(const BorderSide(width: 3,color: Colors.black),),),
                  onPressed: () {
                    setState(() {
                      hobbycontroller.add(TextEditingController());
                    });
                  },
                  child: const Icon(Icons.add,size: 45,color: Colors.black,),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hobbycontroller.forEach((e) {
                        Globals.interest.add(e.text);
                      });
                      print(Globals.interest);
                    });
                  },
                  child: const Text("Save"),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade200,
    );
  }
}
