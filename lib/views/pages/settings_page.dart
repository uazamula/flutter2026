import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem;
  RangeValues _currentRangeValues = const RangeValues(3, 4);
  Map<int, String> numbers = {2: 'two', 3: 'three', 4: 'four', 5: 'five'};
  int? currentRadioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings'), automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'e1', child: Text('Item1')),
                  DropdownMenuItem(value: 'e2', child: Text('Item2')),
                  DropdownMenuItem(value: 'e3', child: Text('Item3')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  isChecked = value;
                  setState(() {});
                },
              ),
              CheckboxListTile(
                tristate: true,
                title: Text('Click me'),
                value: isChecked,
                onChanged: (bool? value) {
                  isChecked = value;
                  setState(() {});
                  print(isChecked);
                },
              ),
              Switch(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Switcher'),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                // you'll see a difference in iPhone
                title: Text('Switcher'),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider(
                value: sliderValue,
                label: '$sliderValue',
                max: 50,
                divisions: 10,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () {},
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white24,
                ),
              ),
              Image.asset('assets/images/karpat.jpg'),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Click me')),
              FilledButton(onPressed: () {}, child: Text('Click me')),
              TextButton(onPressed: () {}, child: Text('Click me')),
              OutlinedButton(onPressed: () {}, child: Text('Click me')),
              CloseButton(),
              BackButton(),
              SliderTheme(
                data: SliderThemeData(
                  activeTickMarkColor: Colors.black,
                  inactiveTickMarkColor: Colors.purple,
                  thumbColor: Colors.green,
                  valueIndicatorColor: Colors.blue,
                  valueIndicatorTextStyle: TextStyle(fontSize: 20),
                  rangeValueIndicatorShape: false
                      ? RoundedRectRangeSliderValueIndicatorShape()
                      : RectangularRangeSliderValueIndicatorShape(),
                  activeTrackColor: Colors.yellow,
                  trackHeight: 20,
                  overlayColor: Colors.red,
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                ),
                child: RangeSlider(
                  values: _currentRangeValues,
                  max: 5,
                  min: 2,
                  divisions: 3,
                  labels: RangeLabels(
                    numbers[_currentRangeValues.start.round()]!,
                    numbers[_currentRangeValues.end.round()]!,
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
              ),
              RadioGroup(
                groupValue: currentRadioVal,
                onChanged: (int? value) {
                  setState(() {
                    currentRadioVal = value;
                  });
                },
                child: Column(
                  crossAxisAlignment: .start,
                  children: [Radio(value: 0), Radio(value: 1)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
