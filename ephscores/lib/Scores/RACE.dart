import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RACE extends StatefulWidget {
  Function callback;
  List<int> values;
  bool dir;

  RACE(this.callback, this.values, this.dir);

  @override
  _RACEState createState() => _RACEState();
}

class _RACEState extends State<RACE> {
  List<DropdownMenuItem<int>> dsve = [
    DropdownMenuItem(
      value: 0,
      child: Text("Direito ausente"),
    ),
    DropdownMenuItem(
      value: 1,
      child: Text("Direito presente"),
    ),
    DropdownMenuItem(
      value: -1,
      child: Text("Nenhum"),
    ),
  ];

  List<DropdownMenuItem<int>> dsvr = [
    DropdownMenuItem(
      value: 0,
      child: Text("Esquerdo ausente"),
    ),
    DropdownMenuItem(
      value: 1,
      child: Text("Esquerdo presente"),
    ),
    DropdownMenuItem(
      value: -1,
      child: Text("Nenhum"),
    ),
  ];

  List<DropdownMenuItem<int>> age = [
    DropdownMenuItem(
      value: 0,
      child: Text("Reconhece o braço e o défice"),
    ),
    DropdownMenuItem(
      value: 1,
      child: Text("Não reconhece o braço ou o défice"),
    ),
    DropdownMenuItem(
      value: 2,
      child: Text("Não reconhece nem braço nem o défice"),
    ),
    DropdownMenuItem(
      value: -1,
      child: Text("Nenhum"),
    ),
  ];

  List<DropdownMenuItem<int>> agr = [
    DropdownMenuItem(
      value: 0,
      child: Text("Afasia obedece a 2 ordens"),
    ),
    DropdownMenuItem(
      value: 1,
      child: Text("Afasia obedece a 1 ordens"),
    ),
    DropdownMenuItem(
      value: 2,
      child: Text("Não executa ordens"),
    ),
    DropdownMenuItem(
      value: -1,
      child: Text("Nenhum"),
    ),
  ];  

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
            hint: Text("Plano sagital"),
            iconSize: 0.0,
            style: TextStyle(color: Color.fromRGBO(44, 73, 108, 1.0)),
            items: [
              DropdownMenuItem(
                value: 0,
                child: Text("Esquerdo"),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text("Direito"),
              ),
              DropdownMenuItem(
                value: -1,
                child: Text("Nenhum"),
              ),
            ],
            onChanged: (e) {
              setState(() {
                if (e == 0) {
                  widget.dir = false;
                } else {
                  widget.dir = true;
                }
                widget.values[0] = e;
                widget.callback(widget.values, widget.dir);
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
            hint: Text("Paresia facial"),
            iconSize: 0.0,
            style: TextStyle(color: Color.fromRGBO(44, 73, 108, 1.0)),
            items: [
              DropdownMenuItem(
                value: 0,
                child: Text("Ausente"),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text("Ligeira"),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("Moderada / Severa"),
              ),
              DropdownMenuItem(
                value: -1,
                child: Text("Nenhum"),
              ),
            ],
            onChanged: (e) {
              setState(() {
                widget.values[1] = e;
                widget.callback(widget.values, widget.dir);
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
            hint: Text("Paresia MS"),
            iconSize: 0.0,
            style: TextStyle(color: Color.fromRGBO(44, 73, 108, 1.0)),
            items: [
              DropdownMenuItem(
                value: 0,
                child: Text("Ausente / Ligeiro (>10 seg)"),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text("Moderada (<10 seg)"),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("Severa (não levanta)"),
              ),
              DropdownMenuItem(
                value: -1,
                child: Text("Nenhum"),
              ),
            ],
            onChanged: (e) {
              setState(() {
                widget.values[2] = e;
                widget.callback(widget.values, widget.dir);
              });
            },
          ),
        ),
        Container(
          color: Colors.grey.shade100,
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: DropdownButton(
            value: (() {
              return widget.values[3] == -1 ? null : widget.values[3];
            })(),
            hint: Text("Paresia MI"),
            iconSize: 0.0,
            style: TextStyle(color: Color.fromRGBO(44, 73, 108, 1.0)),
            items: [
              DropdownMenuItem(
                value: 0,
                child: Text("Ausente / Ligeiro (>5 seg)"),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text("Moderada (<5 seg)"),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("Severa (não levanta)"),
              ),
              DropdownMenuItem(
                value: -1,
                child: Text("Nenhum"),
              ),
            ],
            onChanged: (e) {
              setState(() {
                widget.values[3] = e;
                widget.callback(widget.values, widget.dir);
              });
            },
          ),
        ),
        Container(
          color: Colors.grey.shade100,
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: DropdownButton(
            value: (() {
              return widget.values[4] == -1 ? null : widget.values[4];
            })(),
            hint: Text("Desvio oculocefálico"),
            iconSize: 0.0,
            style: TextStyle(color: Color.fromRGBO(44, 73, 108, 1.0)),
            items: (() {
              if (widget.dir) {
                return dsvr;
              } else {
                return dsve;
              }
            })(),
            onChanged: (e) {
              setState(() {
                widget.values[4] = e;
                widget.callback(widget.values, widget.dir);
              });
            },
          ),
        ),
        Container(
          color: Colors.grey.shade100,
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: DropdownButton(
            value: (() {
              return widget.values[5] == -1 ? null : widget.values[5];
            })(),
            hint: Text("Agnosia / Afasia"),
            iconSize: 0.0,
            style: TextStyle(color: Color.fromRGBO(44, 73, 108, 1.0)),
            items: (() {
              if (widget.dir) {
                return agr;
              } else {
                return age;
              }
            })(),
            onChanged: (e) {
              setState(() {
                widget.values[5] = e;
                widget.callback(widget.values, widget.dir);
              });
            },
          ),
        ),
      ],
    );
  }
}
