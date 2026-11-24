import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/form_decoration.dart';

class Formulario extends StatefulWidget {
  const new({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  bool entrar = true;
  bool ocultarsenha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulários')),
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Visibility(
                    visible: !entrar,
                    child: TextFormField(
                      decoration: getInputDecoration('Nome'),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(decoration: getInputDecoration('E-mail')),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: getInputDecoration('Senha').copyWith(
                      suffixIcon: IconButton(
                        icon: Icon(
                          ocultarsenha
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            ocultarsenha = !ocultarsenha;
                          });
                        },
                      ),
                    ),
                    obscureText: ocultarsenha,
                  ),
                  SizedBox(height: 8),

                  Visibility(
                    visible: !entrar,
                    child: TextFormField(
                      decoration: getInputDecoration('Confirme a senha'),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 32),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text((entrar) ? 'Entrar' : 'Cadastrar'),
                  ),
                  Divider(),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        entrar = !entrar;
                      });
                    },
                    child: Text(
                      (entrar)
                          ? 'Ainda Não tem uma conta? Cadastre-se'
                          : 'Já possui uma conta? Entre',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
