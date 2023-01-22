import 'package:flutter/material.dart';

class ListModel{
  final IconData leadingIcon;
  final String title;
  final String time;
  final String people;

  ListModel(this.leadingIcon, this.title, this.time, this.people);
}

List<ListModel> listModel=[
  ListModel(Icons.electric_bolt_sharp, "Electric Machines 2", "12.00pm", "15"),
  ListModel(Icons.calendar_month, "Diplomatic History", "03.00pm", "27"),
];