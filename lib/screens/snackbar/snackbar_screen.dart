import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halloween/presentation/widgets/widgets.dart';

class SnackBarScreen extends StatelessWidget
    with AppBarCustom, CustomSnackBars {
  static const screenName = 'snackbar_screen';
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithReturnButton(title: 'Snackbars y Diálogos'),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => toShowSnackBarCustom(context,
              snackBarContent: const Text('Hola saludos de Guillermo')),
          label: const Text('Mostrar SnackBar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
      body: const Center(child: _ShowButtonsList()),
    );
  }
}

class _ShowButtonsList extends StatelessWidget {
  const _ShowButtonsList();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'Lord Henry Wotton: Porque influenciar a una persona es darle nuestra propia alma. Esta no tendrá sus propios pensamientos, y se incendiará con sus propias pasiones. Sus virtudes no serán reales, sus pecados, si existen los pecados, serán prestados. Se convierte en el eco de la música de otro, el actor de una parte que no ha sido escrita para él. El objetivo de la vida es el desarrollo de su propio yo. Encontrar su naturaleza apropiada, es esto por lo que cada uno de nosotros estamos aquí..')
              ]);
            },
            child: const Text('Fragmento 1')),
        FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Fragmento de texto 2'))
      ],
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('¿Estas Seguro?'),
              content: const Text(
                  'Se frotó los ojos, y se acercó al cuadro y lo examinó de nuevo. No había señales de cambio alguno cuando miró la pintura, y sin embargo no quedaba duda que la expresión se había alterado. No era sólo su propia impresión. Era horriblemente obvio. Se lanzó sobre la silla, y empezó a pensar. De repente pasó por su mente lo que había dicho en el estudio de Basil Hallward el día que el cuadro fue terminado.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar'))
              ],
            ));
  }
}