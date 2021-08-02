import 'package:flutter/material.dart';

class Imc extends StatefulWidget {
  //const Imc({Key? key}) : super(key: key);

  @override
  _ImcState createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _infoText = "Informe seus dados";

  void _resetFields(){
    weightController.text = "";
    heightController.text = "";
    setState(() { _infoText = "Informe seus dados"; });
    _formKey = GlobalKey<FormState>();
  }

  void _calculate(){
    setState(() {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);
      print(imc.toStringAsPrecision(3));
      if(imc < 18.6){
        _infoText = " Abaixo do Peso (${imc}) ";
      } else if(imc >= 18.6 && imc <24.9){
        _infoText = " Peso Ideal :) (${imc}) ";
      } else if(imc >= 24.9 && imc <29.9) {
        _infoText = " Levemente Acima do Peso :() (${imc}) ";
      } else if(imc >= 29.9 && imc <34.9) {
        _infoText = " Obesidade I (${imc}) ";
      } else if(imc >= 34.9 && imc <39.9) {
        _infoText = " Obesidade Grau II (${imc}) ";
      }else if(imc >= 40.6) {
        _infoText = " Obesidade Grau III (${imc}) ";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          ),
        ], // actions
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.person_outline, size: 100.0, color: Colors.green),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso (kg)",
                    labelStyle: TextStyle(color: Colors.green)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0),
                controller: weightController,
                validator: (value) {
                  if(value.isEmpty){
                    return "Insira seu Peso!";
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Altura (cm)",
                    labelStyle: TextStyle(color: Colors.green)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0),
                controller: heightController,
                validator: (value) {
                  if(value.isEmpty){
                    return "Insira sua Altura!";
                  }
                },
              ),
              SizedBox(height: 10),
              Container(
                height: 50.0,
                child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState.validate()){
                      _calculate();
                    }
                  }, // chama a função criada
                  child: Text('Cadastrar'),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  //style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green) ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                _infoText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0),
              )
            ],
          ),
        )
      ),
    );
  }
}
