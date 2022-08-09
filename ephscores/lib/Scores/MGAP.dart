
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MGAP extends StatefulWidget {
  Function callback;
  List<int> values;

  MGAP(this.callback, this.values);

  @override
  _MGAPState createState() => _MGAPState();
}

class _MGAPState extends State<MGAP> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.grey.shade100,
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: DropdownButton(
            value: (() {
              return widget.values[0] == -1 ? null : widget.values[0];
            })(),
            hint: Text("Mecanismo lesão"),
            iconSize: 0.0,
            style: TextStyle(color: Color.fromRGBO(44, 73, 108, 1.0)),
            items: [
              DropdownMenuItem(
                value: 0,
                child: Text("Penetrante"),
              ),
              DropdownMenuItem(
                value: 4,
                child: Text("Fechado"),
              ),
              DropdownMenuItem(
                value: -1,
                child: Text("Nenhum"),
              ),
            ],
            onChanged: (e) {
              setState(() {
                widget.values[0] = e;
                widget.callback(widget.values);
              });
            },
          ),
        ),
        Container(
          color: Colors.grey.shade100,
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: DropdownButton(
            value: (() {
              return widget.values[1] == -1 ? null : widget.values[1];
            })(),
            hint: Text("Idade"),
            iconSize: 0.0,
            style: TextStyle(color: Color.fromRGBO(44, 73, 108, 1.0)),
            items: [
              DropdownMenuItem(
                value: 0,
                child: Text(">60"),
              ),
              DropdownMenuItem(
                value: 5,
                child: Text("<60"),
              ),
              DropdownMenuItem(
                value: -1,
                child: Text("Nenhum"),
              ),
            ],
            onChanged: (e) {
              setState(() {
                widget.values[1] = e;
                widget.callback(widget.values);
              });
            },
          ),
        ),
        Container(
          color: Colors.grey.shade100,
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: DropdownButton(
            value: (() {
              return widget.values[2] == -1 ? null : widget.values[2];
            })(),
            hint: Text("PAS(mmHg)"),
            iconSize: 0.0,
            style: TextStyle(color: Color.fromRGBO(44, 73, 108, 1.0)),
            items: [
              DropdownMenuItem(
                value: 0,
                child: Text("<60"),
              ),
              DropdownMenuItem(
                value: 3,
                child: Text("60-123"),
              ),
              DropdownMenuItem(
                value: 5,
                child: Text(">120"),
              ),
              DropdownMenuItem(
                value: -1,
                child: Text("Nenhum"),
              ),
            ],
            onChanged: (e) {
              setState(() {
                widget.values[2] = e;
                widget.callback(widget.values);
              });
            },
          ),
        ),
      ],
    );
  }
}