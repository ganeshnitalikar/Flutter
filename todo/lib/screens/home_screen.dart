import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../model_class.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<Color> colors = const [
    Color(0xffE8998D),
    Color(0xffFBF778),
    Color(0xffEED2CC),
    Color(0xff001242),
    Color(0xff005E7C),
    Color(0xff040F16),
    Color(0xffAEF6C7),
  ];

  List<ToDoModel> cardList = [
    ToDoModel(
        title: "Take Notes",
        description: "Take notes of every app you write ",
        date: "12 March , 2024"),
    ToDoModel(
        title: "Take Notes",
        description: "Take notes of every app you write ",
        date: "12 March , 2024"),
    ToDoModel(
        title: "Take Notes",
        description: "Take notes of every app you write ",
        date: "12 March , 2024"),
    ToDoModel(
        title: "Take Notes",
        description: "Take notes of every app you write ",
        date: "12 March , 2024"),
    ToDoModel(
        title: "Take Notes",
        description: "Take notes of every app you write ",
        date: "12 March , 2024"),
    ToDoModel(
        title: "Take Notes",
        description: "Take notes of every app you write ",
        date: "12 March , 2024"),
    ToDoModel(
        title: "Take Notes",
        description: "Take notes of every app you write ",
        date: "12 March , 2024"),
    ToDoModel(
        title: "Take Notes",
        description: "Take notes of every app you write ",
        date: "12 March , 2024"),
    ToDoModel(
        title: "Take Notes",
        description: "Take notes of every app you write ",
        date: "12 March , 2024"),
  ];

  void removeTask(ToDoModel toDoModelObj) {
    cardList.remove(toDoModelObj);
    setState(() {});
  }

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
    setState(() {});
  }

  void submit(bool doedit, [ToDoModel? toDoModelObj]) {
    if (dateController.text.isNotEmpty &&
        titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty) {
      if (!doedit) {
        setState(() {
          cardList.add(ToDoModel(
              title: titleController.text.trim(),
              description: descriptionController.text.trim(),
              date: dateController.text.trim()));
        });
      } else {
        setState(() {
          toDoModelObj!.title = titleController.text;
          toDoModelObj.description = descriptionController.text;
          toDoModelObj.date = dateController.text;
        });
      }
    }
    clearController();
    Navigator.pop(context);
  }

  void showBottomSheet(bool doedit, [ToDoModel? toDoModelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Add Tasks",
                    style: GoogleFonts.quicksand(
                        color: const Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Title",
                        style: GoogleFonts.quicksand(
                            color: const Color(0xff008B94),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: doedit ? toDoModelObj!.title : "Title"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                            color: const Color(0xff008B94),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: descriptionController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText:
                              doedit ? toDoModelObj!.description : "Desciption",
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                            color: const Color(0xff008B94),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: dateController,
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2024),
                              lastDate: DateTime(2025));

                          String formattedDate =
                              DateFormat.yMMMd().format(pickedDate!);

                          setState(() {
                            dateController.text = formattedDate;
                          });
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText:
                                doedit ? toDoModelObj!.date : "Pick A Date",
                            suffixIcon: const Icon(Icons.calendar_month)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        doedit ? submit(true, toDoModelObj) : submit(false);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff008B94),
                              borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: 300,
                          child: Center(
                              child: Text(
                            "Submit",
                            style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ))))
                ],
              ),
            ),
          );
        });
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
    dateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do App",
          style: GoogleFonts.quicksand(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        backgroundColor: const Color(0xff02A7B1),
      ),
      body: ListView.builder(
          itemCount: cardList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(20, 20),
                        blurRadius: 30,
                        color: index < 7
                            ? colors[index]
                            : const Color(0xffEED2CC)),
                  ],
                  color: index < 7 ? colors[index] : const Color(0xffEED2CC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          "https://store-images.s-microsoft.com/image/apps.17089.0f5adb13-52d6-4739-9827-bcf5965270e6.aba78d59-b48f-4f26-94c4-baa332fcb347.a35436f7-981c-4258-b5dc-ac9f9dd6d1d1",
                          height: 52,
                          width: 52,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cardList[index].title,
                            style: GoogleFonts.quicksand(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            cardList[index].description,
                            style: GoogleFonts.quicksand(
                                color: const Color(0xff545454),
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Text(
                        cardList[index].date,
                        style: GoogleFonts.quicksand(
                            color: const Color(0xff545454),
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            showBottomSheet(true, cardList[index]);
                          },
                          icon: const Icon(Icons.edit_outlined)),
                      IconButton(
                          onPressed: () {
                            removeTask(cardList[index]);
                          },
                          icon: const Icon(Icons.delete_outline)),
                    ])
                  ],
                ),
              ),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(false);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
