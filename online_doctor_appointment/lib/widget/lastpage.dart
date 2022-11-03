import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20),
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
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Choose\nConsultation\nFormet',
                  style: GoogleFonts.varelaRound(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 243),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 145, 211, 147),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(Icons.messenger_outline_rounded),
                      ),
                      title: Text(
                        'Start\nConversation',
                        style: GoogleFonts.varelaRound(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 243),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 145, 211, 147),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(Icons.video_call_outlined),
                      ),
                      title: Text(
                        'Join\nlive video call',
                        style: GoogleFonts.varelaRound(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
