import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume/Global.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class pdf extends StatefulWidget {
  const pdf({super.key});

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  final pdf = pw.Document();

  @override
  void initState() {
    super.initState();
    makepdf();
  }

  makepdf() {
    pdf.addPage(
      pw.Page(
        build: (pw.Context context1) => pw.Container(
          padding: const pw.EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: PdfColors.white,
          child: pw.Center(
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                children: [
                  pw.Container(
                    height: 100,
                    width: 100,
                    decoration: const pw.BoxDecoration(),
                    child: pw.Container(
                      height: 160,
                      width: 160,
                      decoration: pw.BoxDecoration(
                        borderRadius: pw.BorderRadius.circular(50),
                      ),
                      child: pw.Image(
                        pw.MemoryImage(Globals.image!.readAsBytesSync()),
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    height: 30,
                  ),
                  pw.Container(
                    alignment: pw.Alignment.center,
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: pw.BoxDecoration(
                      color: PdfColors.brown50,
                      borderRadius: pw.BorderRadius.circular(5),
                      border: pw.Border.all(width: 5, color: PdfColors.brown),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                      // mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                      children: [
                        pw.Text(
                          "${Globals.name}",
                          style: pw.TextStyle(
                              fontSize: 20, fontWeight: pw.FontWeight.bold),
                        ),
                        pw.Text(
                          "${Globals.designation}",
                          style: const pw.TextStyle(
                              fontSize: 16, color: PdfColors.grey),
                        )
                      ],
                    ),
                  ),
                  pw.SizedBox(
                    height: 30,
                  ),
                  pw.Container(
                      padding: const pw.EdgeInsets.all(20),
                      alignment: pw.Alignment.center,
                      height: 470,
                      width: 430,
                      decoration: pw.BoxDecoration(
                        color: PdfColors.brown50,
                        border:
                            pw.Border.all(width: 3, color: PdfColors.brown400),
                        borderRadius: pw.BorderRadius.circular(10),
                      ),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.center,
                          children: [
                            pw.Divider(
                              thickness: 2,
                              color: PdfColors.black,
                            ),
                            pw.Center(
                              child: pw.Text(
                                "Contact Information",
                                style: pw.TextStyle(
                                    fontSize: 20,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Divider(
                              thickness: 2,
                              color: PdfColors.black,
                            ),
                            pw.SizedBox(
                              height: 20,
                            ),
                            pw.Text(
                              "Name:${Globals.name}",
                              style: const pw.TextStyle(fontSize: 18),
                            ),
                            pw.Text("Email:${Globals.Email}",
                                style: const pw.TextStyle(fontSize: 18)),
                            pw.Text("Contact:${Globals.contact}",
                                style: const pw.TextStyle(fontSize: 18)),
                            pw.Text("Address:${Globals.address}",
                                style: const pw.TextStyle(fontSize: 18)),
                            pw.SizedBox(
                              height: 20,
                            ),
                            pw.Divider(
                              thickness: 2,
                              color: PdfColors.black,
                            ),
                            pw.Center(
                              child: pw.Text(
                                "Personal Details",
                                style: pw.TextStyle(
                                    fontSize: 20,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Divider(
                              thickness: 2,
                              color: PdfColors.black,
                            ),
                            pw.SizedBox(
                              height: 20,
                            ),
                            pw.Text(
                              "Date Of Birth:${Globals.date}",
                              style: const pw.TextStyle(fontSize: 18),
                            ),
                            pw.Text(
                              "Language:${(Globals.english == true) ? "English" : ""},${(Globals.hindi == true) ? "Hindi" : ""},${(Globals.gujarati == true) ? "Gujarati" : ""}",
                              style: const pw.TextStyle(fontSize: 18),
                            ),
                            pw.Text("Marrital Status:${Globals.Marriedstatus}",
                                style: const pw.TextStyle(fontSize: 18)),
                            pw.Text("language:${Globals.language}",
                                style: const pw.TextStyle(fontSize: 18)),
                            pw.Text("Nationality:${Globals.country}",
                                style: const pw.TextStyle(fontSize: 18)),
                          ])),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Container(
                    padding: const pw.EdgeInsets.all(20),
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    //  color: Colors.blue,
                    decoration: pw.BoxDecoration(
                        color: PdfColors.blue200,
                        border: pw.Border.all(width: 3, color: PdfColors.blue),
                        borderRadius: pw.BorderRadius.circular(30)),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "Name:${Globals.name}",
                          style: const pw.TextStyle(fontSize: 18),
                        ),
                        pw.Text("Email:${Globals.Email}",
                            style: const pw.TextStyle(fontSize: 18)),
                        pw.Text("Contact:${Globals.contact}",
                            style: const pw.TextStyle(fontSize: 18)),
                        pw.Text("Address:${Globals.address}",
                            style: const pw.TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
    pdf.addPage(
      pw.Page(
        build: (pw.Context context1) => pw.Container(
          padding: const pw.EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: PdfColors.white,
          child: pw.Center(
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                children: [
                  pw.Container(
                    padding: const pw.EdgeInsets.all(20),
                    alignment: pw.Alignment.center,
                    height: 700,
                    width: 430,
                    decoration: pw.BoxDecoration(
                      color: PdfColors.brown50,
                      border:
                          pw.Border.all(width: 3, color: PdfColors.brown400),
                      borderRadius: pw.BorderRadius.circular(10),
                    ),
                    child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.center,
                        children: [
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.Center(
                            child: pw.Text(
                              "Education",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            ),
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Text(
                            "Degree:${Globals.degree}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.Text(
                            "Clg:${Globals.clg}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.Text("Percentage:${Globals.per}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.Text("Passing Year:${Globals.year}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.Center(
                            child: pw.Text(
                              "Experience",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            ),
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Text(
                            "Company Name:${Globals.company}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.Text("Institute:${Globals.post}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.Text("Role:${Globals.role}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.Text("Employed Status:${Globals.employe_status}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.Center(
                            child: pw.Text(
                              "Technical skills",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            ),
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Text(
                            "Skills:${Globals.Skills}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.Center(
                            child: pw.Text(
                              "Hobbies",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            ),
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Text(
                            "Hobby:${Globals.interest}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                        ]),
                  ),
                ]),
          ),
        ),
      ),
    );
    pdf.addPage(
      pw.Page(
        build: (pw.Context context1) => pw.Container(
          padding: const pw.EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: PdfColors.white,
          child: pw.Center(
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                children: [
                  pw.Container(
                    padding: const pw.EdgeInsets.all(20),
                    alignment: pw.Alignment.center,
                    height: 700,
                    width: 430,
                    decoration: pw.BoxDecoration(
                      color: PdfColors.brown50,
                      border:
                          pw.Border.all(width: 3, color: PdfColors.brown400),
                      borderRadius: pw.BorderRadius.circular(10),
                    ),
                    child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.center,
                        children: [
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.Center(
                            child: pw.Text(
                              "Projects",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            ),
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Text(
                            "Project Title:${Globals.prname}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.Text(
                            "Code Language:${(Globals.c == true) ? "c" : ""},${(Globals.cplusplus == true) ? "C++" : ""},${(Globals.flutter == true) ? "Flutter" : ""}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.Text("Technologies:${Globals.Marriedstatus}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.Text("Roles:${Globals.prrole}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.Text("Technologies:${Globals.prtec}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.Text("Project Description:${Globals.prdes}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.Center(
                            child: pw.Text(
                              "Achievement",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            ),
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Text(
                            "Achievement:${Globals.achive}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.Center(
                            child: pw.Text(
                              "Reference",
                              style: pw.TextStyle(
                                  fontSize: 20, fontWeight: pw.FontWeight.bold),
                            ),
                          ),
                          pw.Divider(
                            thickness: 2,
                            color: PdfColors.black,
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Text(
                            "Reference Name:${Globals.refname}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.Text("Designation:${Globals.refdes}",
                              style: const pw.TextStyle(fontSize: 18)),
                          pw.Text("Organisation:${Globals.reforg}",
                              style: const pw.TextStyle(fontSize: 18)),
                        ]),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: const Icon(Icons.picture_as_pdf),
          onPressed: () async {
            Uint8List data = await pdf.save();
            await Printing.layoutPdf(onLayout: (format) => data);
          },
        )
      ]),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image(
                    image: FileImage(Globals.image!),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.shade100,
                      border:
                          Border.all(width: 5, color: Colors.brown.shade300)),
                  child: Column(
                    children: [
                      Text(
                        "${Globals.name}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "${Globals.designation}",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 800,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEDCDBB),
                    border: Border.all(
                      width: 4,
                      color: const Color(0xffBF9270),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Center(
                          child: Text(
                            "Contact Information",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Name:${Globals.name}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text("Email:${Globals.Email}",
                            style: const TextStyle(fontSize: 18)),
                        Text("Contact:${Globals.contact}",
                            style: const TextStyle(fontSize: 18)),
                        Text("Address:${Globals.address}",
                            style: const TextStyle(fontSize: 18)),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Center(
                          child: Text(
                            "Personal Details",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Date Of Birth:${Globals.date}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Language:${(Globals.english == true) ? "English" : ""},${(Globals.hindi == true) ? "Hindi" : ""},${(Globals.gujarati == true) ? "Gujarati" : ""}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text("Marrital Status:${Globals.Marriedstatus}",
                            style: const TextStyle(fontSize: 18)),
                        Text("language:${Globals.language}",
                            style: const TextStyle(fontSize: 18)),
                        Text("Nationality:${Globals.country}",
                            style: const TextStyle(fontSize: 18)),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Center(
                          child: Text(
                            "Education",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Degree:${Globals.degree}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Clg:${Globals.clg}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text("Percentage:${Globals.per}",
                            style: const TextStyle(fontSize: 18)),
                        Text("Passing Year:${Globals.year}",
                            style: const TextStyle(fontSize: 18)),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Center(
                          child: Text(
                            "Experience",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Center(
                          child: Text(
                            "Technical skills",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Skills:${Globals.Skills}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Center(
                          child: Text(
                            "Hobbies",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hobby:${Globals.interest}",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Center(
                          child: Text(
                            "Projects",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Project Title:${Globals.prname}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Code Language:${(Globals.c == true) ? "c" : ""},${(Globals.cplusplus == true) ? "C++" : ""},${(Globals.flutter == true) ? "Flutter" : ""}",
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Center(
                          child: Text(
                            "Achievement",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Achievement:${Globals.achive}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const Center(
                          child: Text(
                            "Reference",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
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
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade400,
    );
  }
}
