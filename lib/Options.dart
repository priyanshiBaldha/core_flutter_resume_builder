import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "Resume Workspace",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Text("Build Options",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300),)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 701,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade200,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('contact');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/Contact-info.png',
                                              ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Contact info",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 120),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('carrier');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/briefcase.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Carrier Objective",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 80),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('personal');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/user.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Personal Details",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 85),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('education');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/mortarboard.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Education",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 145),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('experience');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/thinking.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Experiences",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 120),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('skills');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/experience.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Technical Skills",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 90),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('hobby');

                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/open-book.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Interest/Hobbies",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 75),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('project');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/project.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Projects",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 160),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('achievement');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/achievement.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Achievements",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 100),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('reference');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/handshake.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "References",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 130),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('declare');
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                              height: 40,
                                              width: 50,
                                              child: Image.asset(
                                                'assets/images/declaration.png',
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "Declaration",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 130),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                             padding: const EdgeInsets.only(top: 30),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed('pdf');
                              },
                              child: Container(
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(             
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 3,color: Colors.blue)
                                ),
                                child: Center(child: Text("Make PDF",style: TextStyle(color: Colors.black,fontSize: 20),))
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
   );
  }
}