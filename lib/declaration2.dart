import 'package:flutter/material.dart';
import 'package:resume/Global.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Declaration"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Image(image: FileImage(Globals.image!),)
              ),
              const SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height/15,
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 2,color: Colors.blue.shade500)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${Globals.name}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    Text("${Globals.designation}",style: const TextStyle(fontSize: 16,color: Colors.grey),)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),
                    child: const Text("Contact Information",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(border: Border.all(width: 3,color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name:${Globals.name}",style: const TextStyle(fontSize: 18),),
                    Text("Email:${Globals.Email}",style: const TextStyle(fontSize: 18)),
                    Text("Contact:${Globals.contact}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Address:${Globals.address}",
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: const Text(
                      "Personal Details",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date Of Birth:${Globals.date}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text("Marrital Status:${Globals.Marriedstatus}",
                        style: const TextStyle(fontSize: 18)),
                    Text("language:${Globals.language}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Nationality:${Globals.country}",
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: const Text(
                      "Education",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Degree:${Globals.degree}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text("Clg:${Globals.clg}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Percentage:${Globals.per}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Passing Year:${Globals.year}",
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: const Text(
                      "Experience",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Company Name:${Globals.company}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text("Institute:${Globals.post}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Role:${Globals.role}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Employed Status:${Globals.employe_status}",
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: const Text(
                      "Technical skills",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: const Text(
                      "Hobbies",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: const Text(
                      "Projects",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 180,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project Title:${Globals.prname}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text("Technologies:${Globals.Marriedstatus}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Roles:${Globals.prrole}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Technologies:${Globals.prtec}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Project Description:${Globals.prdes}",
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: const Text(
                      "Achievement",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: const Text(
                      "Reference",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reference Name:${Globals.refname}",
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text("Designation:${Globals.refdes}",
                        style: const TextStyle(fontSize: 18)),
                    Text("Organisation:${Globals.reforg}",
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}