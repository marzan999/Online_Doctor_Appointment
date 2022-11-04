import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_doctor_appointment/model/data.dart';
import 'package:online_doctor_appointment/widget/list.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  final a = Doctor.generatedList();
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: IconButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    ),
                    color: Colors.black,
                  ),
                  title: Center(
                    child: Text(
                      "Doctors",
                      style: GoogleFonts.varelaRound(
                          fontSize: 27,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.search,
                        size: 35,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 86, 147, 218),
                  ),
                  margin: EdgeInsets.all(15),
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 7,
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          height: 50,
                          minWidth: 180,
                          color: Colors.white,
                          onPressed: (() {}),
                          child: Text(
                            "Online",
                            style: GoogleFonts.prompt(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: TextButton(
                            onPressed: (() {}),
                            child: Text(
                              "Visit",
                              style: GoogleFonts.prompt(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    "Let's find your Doctors",
                    style: GoogleFonts.varelaRound(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 50,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: (() {
                            setState(() {
                              selected = index;
                            });
                          }),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: selected == index
                                          ? Colors.white
                                          : Color.fromARGB(255, 136, 187, 138),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: selected == index
                                        ? Color.fromARGB(255, 139, 185, 141)
                                        : Colors.white38),
                                child: Text(
                                  a[index].title,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                              ),
                            ],
                          ),
                        );
                      }),
                      separatorBuilder: (_, index) => SizedBox(
                            width: 10,
                          ),
                      itemCount: a.length),
                ),
                // Container(
                //   margin: EdgeInsets.all(15),
                //   height: 240,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(25),
                //       color: Color.fromARGB(255, 243, 243, 243)),
                // ),
                // Container(
                //   margin: EdgeInsets.only(left: 15, right: 15),
                //   height: 240,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(25),
                //       color: Color.fromARGB(255, 243, 243, 243)),
                // )
                DoctorInfo()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
