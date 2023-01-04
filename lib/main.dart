import 'package:flutter/material.dart';
import 'package:resume/contact.dart';
import 'package:resume/achievements.dart';
import 'package:resume/carrier_obj.dart';
import 'package:resume/Education.dart';
import 'package:resume/Experience.dart';
import 'package:resume/Personal_detail.dart';
import 'package:resume/Projects.dart';
import 'package:resume/References.dart';
import 'package:resume/Technical_skills.dart';
import 'package:resume/Options.dart';
import 'package:resume/Declaration.dart';
import 'package:resume/pdf.dart';
import 'declaration2.dart';
import 'hobbies.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'resume',
    routes: {
      'resume': (context) => const Resume(),
      'contact': (context) => const Contact(),
      'options': (context) => const Options(),
      'carrier': (context) => const Carrier(),
      'personal': (context) => const Personal(),
      'education': (context) => const Education(),
      'experience': (context) => const Experience(),
      'skills': (context) => const Skills(),
     'hobby': (context) => const Hobby(),
      'project': (context) => const Projects(),
      'achievement': (context) => const Achievement(),
      'reference': (context) => const References(),
      'declaration': (context) => const Declaration(),
      'pdf':(context) => const pdf(),
      'declare':(context) => const Declare(),
    },
  ));
}

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Builder",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
        centerTitle: true,
        elevation: 0,
        // toolbarHeight: 150,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: const Text(
              "Resumes",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 50,
            width: 50,
            child: Image.asset('assets/images/open-cardboard-box.png'),),
          const Text("No Resumes + Create New resume.",style: TextStyle(color: Colors.black38,fontSize: 18),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.pushNamed(context, 'options');
          });
        },
        child: const Icon(Icons.add),
    ),
    );
  }
}