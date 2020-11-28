import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  int cantidad = 0;
  TextEditingController inputDateController = TextEditingController();
  TextEditingController inputMailController = TextEditingController();
  TextEditingController inputPasswordController = TextEditingController();

  List<String> superPower = [
    "Volar",
    "Superfuerza",
    "Supersalto",
    "Ejemplo"
  ];

  String select = "Ejemplo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Input Page"),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: <Widget>[
            _buildInputSimple(),
            SizedBox(
              height: 20,
            ),
            _buildInputMail(),
            SizedBox(
              height: 20,
            ),
            _buildInputPassword(),
            SizedBox(
              height: 20,
            ),
            _buildInputDate(),
            SizedBox(
              height: 20,
            ),
            _buildDropDown()
          ],
        ));
  }

  Widget _buildInputSimple() {
    return TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.account_circle),
          suffixIcon: Icon(Icons.accessibility),
          labelText: "Nombre",
          hintText: "Ingrese su nombre...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          helperText: "Solo ingresa tu nombre",
          counter: Text("Cant. letras: $cantidad")),
      onChanged: (String value) {
        cantidad = value.length;
        setState(() {});
      },
    );
  }

  Widget _buildInputMail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          icon: Icon(Icons.email),
          suffixIcon: Icon(Icons.alternate_email),
          labelText: "Correo electrónico",
          hintText: "Ingrese su correo electrónico...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          helperText: "Solo ingresa tu correo electrónico"),
    );
  }

  Widget _buildInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.vpn_key),
          labelText: "Contraseña",
          hintText: "Ingrese su contraseña...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          helperText: "Solo ingresa tu contraseña"),
    );
  }

  Widget _buildInputDate() {
    return TextField(
      controller: inputDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Fecha de Nacimiento",
        labelText: "Fecha de Nacimiento",
        helperText: "Fecha de Nacimiento",
        icon: Icon(Icons.calendar_today),
        suffixIcon: Icon(Icons.perm_contact_calendar),
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        selectDate(context);
      },
    );
  }

  selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2019),
      lastDate: new DateTime(2022),
    );
    if(picked != null){
      setState(() {
        print(picked.toString());
        inputDateController.text = picked.toString();
      });
    }
  }

  Widget _buildDropDown(){
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        DropdownButton<String>(
          items: getOptionDropDown(),
          value: select,
          onChanged: (value){
            select = value;
            setState(() {

            });
            print("Seleccionaste... $value");
          },
        )
      ],
    );
  }

  List<DropdownMenuItem<String>> getOptionDropDown(){

    List<DropdownMenuItem<String>> federica = new List();

    superPower.forEach((element) {

      print("asdsadasdsadsads $element");

      federica.add(
        DropdownMenuItem(
          child: Text(element),
          value: element,
        )
      );
    });
    return federica;

  }

}
