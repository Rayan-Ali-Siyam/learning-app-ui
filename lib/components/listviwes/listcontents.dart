import 'package:flutter/material.dart';

class TodaysHWListContents {
  TodaysHWListContents({
    this.subject,
    this.lessonNo,
    this.lessonName,
    this.subImage,
    this.typeImage,
    this.typeName,
  });

  String subject;
  String lessonNo;
  String lessonName;
  String subImage;
  String typeImage;
  String typeName;
}

List<TodaysHWListContents> todaysHWContents = [
  TodaysHWListContents(
    subject: 'Mathematics',
    lessonNo: 'Lesson 1',
    lessonName: 'Algebra',
    subImage: 'assets/logos/home/compass.png',
    typeImage: 'assets/logos/home/pencil.png',
    typeName: 'Write formulas',
  ),
  TodaysHWListContents(
    subject: 'Chemistry',
    lessonNo: 'Lesson 5',
    lessonName: 'Organic chemistry',
    subImage: 'assets/logos/home/lab-tool.png',
    typeImage: 'assets/logos/home/open-book.png',
    typeName: 'Learn the topic',
  ),
];

class PerformanceListContents {
  PerformanceListContents({
    this.subject,
    this.lessonNo,
    this.lessonName,
    this.subImage,
    this.typeImage,
    this.typeName,
  });

  String subject;
  String lessonNo;
  String lessonName;
  String subImage;
  String typeImage;
  String typeName;
}

List<PerformanceListContents> performanceContents = [
  PerformanceListContents(
    subject: 'Mathematics',
    lessonNo: 'Lesson 1',
    lessonName: 'Algebra',
    subImage: 'assets/logos/home/compass.png',
    typeImage: 'assets/logos/home/pencil.png',
    typeName: 'Write formulas',
  ),
  PerformanceListContents(
    subject: 'Chemistry',
    lessonNo: 'Lesson 5',
    lessonName: 'Organic chemistry',
    subImage: 'assets/logos/home/lab-tool.png',
    typeImage: 'assets/logos/home/open-book.png',
    typeName: 'Learn the topic',
  ),
];

class SubjectListContent {
  SubjectListContent({
    this.subjectName,
    this.subjectImage,
    this.totalChapters,
    this.percentage,
  });

  String subjectName;
  String subjectImage;
  int totalChapters;
  int percentage;
}

List<SubjectListContent> subjectListContents = [
  SubjectListContent(
    subjectName: 'Chemistry',
    subjectImage: 'assets/logos/courses/lab-tool.png',
    totalChapters: 5,
    percentage: 100,
  ),
  SubjectListContent(
    subjectName: 'Mathematics',
    subjectImage: 'assets/logos/courses/compass.png',
    totalChapters: 5,
    percentage: 80,
  ),
  SubjectListContent(
    subjectName: 'Accounting',
    subjectImage: 'assets/logos/courses/accounting.png',
    totalChapters: 5,
    percentage: 71,
  ),
  SubjectListContent(
    subjectName: 'Physics',
    subjectImage: 'assets/logos/courses/atom.png',
    totalChapters: 5,
    percentage: 63,
  ),
  SubjectListContent(
    subjectName: 'Biology',
    subjectImage: 'assets/logos/courses/dna.png',
    totalChapters: 5,
    percentage: 55,
  ),
];

class ChaptersListContent {
  ChaptersListContent({
    this.chapterNo,
    this.chapterName,
    this.totalTopics,
    this.status,
    this.color,
  });

  int chapterNo;
  String chapterName;
  int totalTopics;
  String status;
  Color color;
}

List<ChaptersListContent> chemistry = [
  ChaptersListContent(
    chapterNo: 1,
    chapterName: 'Organic Chemistry',
    totalTopics: 15,
    status: 'done',
    color: Colors.redAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 2,
    chapterName: 'Organic Chemistry',
    totalTopics: 15,
    status: 'running',
    color: Colors.tealAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 3,
    chapterName: 'Organic Chemistry',
    totalTopics: 15,
    status: 'locked',
    color: Colors.lightGreenAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 4,
    chapterName: 'Organic Chemistry',
    totalTopics: 15,
    status: 'locked',
    color: Colors.pinkAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 5,
    chapterName: 'Organic Chemistry',
    totalTopics: 15,
    status: 'locked',
    color: Colors.yellow[100],
  ),
];

List<ChaptersListContent> math = [
  ChaptersListContent(
    chapterNo: 1,
    chapterName: 'Organic Math',
    totalTopics: 15,
    status: 'done',
    color: Colors.redAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 2,
    chapterName: 'Organic Math',
    totalTopics: 15,
    status: 'done',
    color: Colors.tealAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 3,
    chapterName: 'Organic Math',
    totalTopics: 15,
    status: 'running',
    color: Colors.lightGreenAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 4,
    chapterName: 'Organic Math',
    totalTopics: 15,
    status: 'locked',
    color: Colors.pinkAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 5,
    chapterName: 'Organic Math',
    totalTopics: 15,
    status: 'locked',
    color: Colors.yellow[100],
  ),
];

List<ChaptersListContent> science = [
  ChaptersListContent(
    chapterNo: 1,
    chapterName: 'Organic Science',
    totalTopics: 15,
    status: 'done',
    color: Colors.redAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 2,
    chapterName: 'Organic Science',
    totalTopics: 15,
    status: 'done',
    color: Colors.tealAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 3,
    chapterName: 'Organic Science',
    totalTopics: 15,
    status: 'running',
    color: Colors.lightGreenAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 4,
    chapterName: 'Organic Science',
    totalTopics: 15,
    status: 'locked',
    color: Colors.pinkAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 5,
    chapterName: 'Organic Science',
    totalTopics: 15,
    status: 'locked',
    color: Colors.yellow[100],
  ),
];

List<ChaptersListContent> biology = [
  ChaptersListContent(
    chapterNo: 1,
    chapterName: 'Organic Biology',
    totalTopics: 15,
    status: 'done',
    color: Colors.redAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 2,
    chapterName: 'Organic Biology',
    totalTopics: 15,
    status: 'done',
    color: Colors.tealAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 3,
    chapterName: 'Organic Biology',
    totalTopics: 15,
    status: 'running',
    color: Colors.lightGreenAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 4,
    chapterName: 'Organic Biology',
    totalTopics: 15,
    status: 'locked',
    color: Colors.pinkAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 5,
    chapterName: 'Organic Biology',
    totalTopics: 15,
    status: 'locked',
    color: Colors.yellow[100],
  ),
];

List<ChaptersListContent> physics = [
  ChaptersListContent(
    chapterNo: 1,
    chapterName: 'Organic Physics',
    totalTopics: 15,
    status: 'done',
    color: Colors.redAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 2,
    chapterName: 'Organic Physics',
    totalTopics: 15,
    status: 'done',
    color: Colors.tealAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 3,
    chapterName: 'Organic Physics',
    totalTopics: 15,
    status: 'running',
    color: Colors.lightGreenAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 4,
    chapterName: 'Organic Physics',
    totalTopics: 15,
    status: 'locked',
    color: Colors.pinkAccent[100],
  ),
  ChaptersListContent(
    chapterNo: 5,
    chapterName: 'Organic Physics',
    totalTopics: 15,
    status: 'locked',
    color: Colors.yellow[100],
  ),
];
