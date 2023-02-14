import 'package:flutter/material.dart';
import 'package:request/constans/colors.dart';
import 'package:request/screens/widgets/note_card.dart';

class ResponceDetails extends StatelessWidget {
  const ResponceDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          NoteCard(
            image: "assets/images/download.png",
            title: "Heigher studies responce",
            responceDetails: "Heigher studies had responced to some requests",
            actionIcon: Icons.more_horiz,
          ),
          NoteCard(
            image: "assets/images/Tylah-Evershed-Profile-200x200.jpg",
            title: "Student Request",
            responceDetails: "Amel Abdulazim had applied a freezing request",
            actionIcon: Icons.more_horiz,
          ),
          NoteCard(
            image:
                "assets/images/Zoe-Institut-10-scaled-e1642151161755-300x300.jpg",
            title: "Heigher studies responce",
            responceDetails: "Dr.Othman alnour had responced to some requests",
            actionIcon: Icons.more_horiz,
          ),
          NoteCard(
            image: "assets/images/download.png",
            title: "Heigher studies responce",
            responceDetails: "Heigher studies had responced to some requests",
            actionIcon: Icons.more_horiz,
          ),
          NoteCard(
            image: "assets/images/download.png",
            title: "Heigher studies responce",
            responceDetails: "Heigher studies had responced to some requests",
            actionIcon: Icons.more_horiz,
          ),
          NoteCard(
            image: "assets/images/Tylah-Evershed-Profile-200x200.jpg",
            title: "Heigher studies responce",
            responceDetails: "Heigher studies had responced to some requests",
            actionIcon: Icons.more_horiz,
          ),
          NoteCard(
            image:
                "assets/images/Zoe-Institut-10-scaled-e1642151161755-300x300.jpg",
            title: "Heigher studies responce",
            responceDetails: "Heigher studies had responced to some requests",
            actionIcon: Icons.more_horiz,
          ),
          NoteCard(
            image: "assets/images/download.png",
            title: "Heigher studies responce",
            responceDetails: "Heigher studies had responced to some requests",
            actionIcon: Icons.more_horiz,
          ),
        ],
      ),
    );
  }
}
