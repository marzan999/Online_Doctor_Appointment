import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_doctor_appointment/model/data.dart';
import 'package:online_doctor_appointment/widget/lastpage.dart';

class DoctorInfo extends StatefulWidget {
  const DoctorInfo({super.key});

  @override
  State<DoctorInfo> createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  final a = Doctor.generatedList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 590,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (index, contex) => Container(
                height: 270,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 15, left: 15, right: 15),
                          height: 170,
                          width: 160,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(a[contex].img,
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              a[contex].name,
                              style: GoogleFonts.roboto(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              a[contex].designation,
                              style: GoogleFonts.roboto(fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  a[contex].feetile,
                                  style: GoogleFonts.varelaRound(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Text(
                            a[contex].price,
                            style: GoogleFonts.roboto(fontSize: 17),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            a[contex].star,
                            style: GoogleFonts.roboto(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LastPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 90),
                              // child:
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 86, 147, 218),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Text(
                                  'Connect',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                height: 10,
              ),
          itemCount: a.length),
    );
  }
}
