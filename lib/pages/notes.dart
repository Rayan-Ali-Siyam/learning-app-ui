import 'package:flutter/material.dart';
import 'package:learning_app/components/custompainters.dart';
import 'package:learning_app/components/sabt.dart';

class Note {
  Note({this.subject});
  String subject;
}

List<Note> notes = [
  Note(
    subject: 'Math',
  ),
  Note(
    subject: 'Accounting',
  ),
  Note(
    subject: 'Business',
  ),
  Note(
    subject: 'Finance',
  ),
  Note(
    subject: 'Chemistry',
  ),
  Note(
    subject: 'Biology',
  ),
  Note(
    subject: 'Science',
  ),
  Note(
    subject: 'English',
  ),
];

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          stretch: true,
          centerTitle: true,
          leading: Container(),
          title: SABT(child: Text('Notes')),
          expandedHeight: MediaQuery.of(context).size.height * 0.304,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 80, 4, 224),
                  Color.fromARGB(255, 106, 20, 224),
                  Color.fromARGB(255, 135, 40, 225),
                ],
              ),
            ),
            child: FlexibleSpaceBar(
              background: CustomPaint(
                painter: NotesSABPainter(),
                child: SafeArea(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Spacer(
                              flex: 8,
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.2025,
                              child:
                                  Image.asset('assets/logos/notes/notes.png'),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Notes',
                              style: TextStyle(
                                color: Colors.grey[50],
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: MediaQuery.of(context).size.width * 0.01,
                  mainAxisSpacing: MediaQuery.of(context).size.height * 0.01,
                ),
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    child: InkWell(
                      onTap: () {
                        print('Notes');
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.03,
                          horizontal: MediaQuery.of(context).size.width * 0.05,
                        ),
                        child: SingleChildScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                notes[index].subject,
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).textScaleFactor *
                                          18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                  '___________________________________________________________________________________________________________________________________________________________________________________________________'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                  return null;
                  return null;
                  return null;
                  return null;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
