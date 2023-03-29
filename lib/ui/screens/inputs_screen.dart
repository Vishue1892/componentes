import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  String _password = '';
  String _email = '';
  String _fecha = '';
  final TextEditingController _inputFieldDataController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearEntrada(),
          const Divider(),
          _crearEntradaPswd(),
          const Divider(),
          _crearEntradaMail(),
          const Divider(),
          _crearEntradaFecha(),
          const Divider(),
        ],
      ),
    );
  }

  Widget _crearEntrada() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.amberAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      //maxLength:4,
      maxLines: null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: "Escriba su nombre",
        labelText: "Nombre:",
        //helperText: "Nombre",
        //icon: const Icon(Icons.person),
        prefixIcon: const Icon(Icons.person),
        //iconColor:Colors.blueGrey,//solo aplica para
        //prefixIcon:const CircularProgressIndicator(),
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }

  Widget _crearEntradaPswd() {
    return TextField(
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.amberAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      maxLength: 8,
      obscureText: true,
      keyboardType: TextInputType.number,
      //maxLines: 1,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: "Escriba contraseña",
        labelText: "Password:",
        //helperText: "Nombre",
        //icon: const Icon(Icons.person),
        suffixIcon: const Icon(Icons.key),
        //iconColor:Colors.blueGrey,//solo aplica para
        //prefixIcon:const CircularProgressIndicator(),
      ),
      onChanged: (valor) {
        _password = valor;
        print(_password);
      },
    );
  }

  Widget _crearEntradaMail() {
    return TextField(
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.amberAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      keyboardType: TextInputType.emailAddress,
      //maxLines: 1,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: "Escriba email",
        labelText: "E-mail:",
        //helperText: "Nombre",
        //icon: const Icon(Icons.person),
        prefixIcon: const Icon(Icons.mail),
        //iconColor:Colors.blueGrey,//solo aplica para
        //prefixIcon:const CircularProgressIndicator(),
      ),
      onChanged: (valor) {
        _email = valor;
        print(_email);
      },
    );
  }

  Widget _crearEntradaFecha() {
    return TextField(
      enableInteractiveSelection: false,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.amberAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      //maxLines: 1,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: "Escriba fecha de Nacimiento",
        labelText: "Fecha de nacimiento:",
        prefixIcon: const Icon(Icons.calendar_month),
        //iconColor:Colors.blueGrey,//solo aplica para
        //prefixIcon:const CircularProgressIndicator(),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        print(_fecha);
        _inputFieldDataController.text = _fecha;
      });
    }
  }
}
