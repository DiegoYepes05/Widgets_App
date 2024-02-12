import 'package:flutter/material.dart';

class UiControlsScreen extends StatefulWidget {
  const UiControlsScreen({super.key});

  @override
  State<UiControlsScreen> createState() => _UiControlsScreenState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsScreenState extends State<UiControlsScreen> {
  bool isDeveloper = true;
  bool breakfast = false;
  bool lunch = false;
  bool dinner = false;

  Transportation transportation = Transportation.car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ui controls',
        ),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text(
              'Desarrollador?',
            ),
            subtitle: const Text(
              'Eres desarrollador?',
            ),
            value: isDeveloper,
            onChanged: (value) => setState(
              () {
                isDeveloper = !isDeveloper;
              },
            ),
          ),
          ExpansionTile(
            title: const Text('Por donde quieres Viajar?'),
            subtitle: Text('$transportation'),
            children: [
              RadioListTile(
                title: const Text('Carro'),
                subtitle: const Text('Viajar por carro?'),
                value: Transportation.car,
                groupValue: transportation,
                onChanged: (value) => setState(() {
                  transportation = Transportation.car;
                }),
              ),
              RadioListTile(
                title: const Text('bote'),
                subtitle: const Text('Viajar por bote?'),
                value: Transportation.boat,
                groupValue: transportation,
                onChanged: (value) => setState(() {
                  transportation = Transportation.boat;
                }),
              ),
              RadioListTile(
                title: const Text('Avion'),
                subtitle: const Text('Viajar por avion?'),
                value: Transportation.plane,
                groupValue: transportation,
                onChanged: (value) => setState(() {
                  transportation = Transportation.plane;
                }),
              ),
              RadioListTile(
                title: const Text('Submarino'),
                subtitle: const Text('Viajar por Submarino?'),
                value: Transportation.submarine,
                groupValue: transportation,
                onChanged: (value) => setState(
                  () {
                    transportation = Transportation.submarine;
                  },
                ),
              ),
            ],
          ),
          CheckboxListTile(
            title: const Text(
              'Desayuno',
            ),
            subtitle: const Text(
              'Quieres desayunar?',
            ),
            value: breakfast,
            onChanged: (value) => setState(
              () {
                breakfast = !breakfast;
              },
            ),
          ),
          CheckboxListTile(
            title: const Text(
              'Almuerzo',
            ),
            subtitle: const Text(
              'Quieres Almorzar?',
            ),
            value: lunch,
            onChanged: (value) => setState(
              () {
                lunch = !lunch;
              },
            ),
          ),
          CheckboxListTile(
            title: const Text(
              'Cenar',
            ),
            subtitle: const Text(
              'Quieres cenar?',
            ),
            value: dinner,
            onChanged: (value) => setState(
              () {
                dinner = !dinner;
              },
            ),
          ),
        ],
      ),
    );
  }
}
