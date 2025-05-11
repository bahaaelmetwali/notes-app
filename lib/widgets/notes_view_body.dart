import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/editnoteview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Editnoteview.id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffffcd7a),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              (ListTile(
                contentPadding: EdgeInsets.all(6),
                title: Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),

                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Build Your career with Tharwat Samy',
                    style: TextStyle(
                      color: Colors.black.withAlpha((0.5 * 255).toInt()),
                      fontSize: 22,
                    ),
                  ),
                ),

                trailing: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, right: 14),
                child: Text(
                  'May21,2022',
                  style: TextStyle(
                    color: Colors.black.withAlpha((0.5 * 255).toInt()),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
