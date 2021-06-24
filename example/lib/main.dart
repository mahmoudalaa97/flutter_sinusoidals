import 'package:flutter/material.dart';
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: _SinusoidalsDemo(),
      ),
    );
  }
}

const _colors = [
  Color(0xff26285D),
  Color(0xffFF8533),
];

class _SinusoidalsDemo extends StatelessWidget {
  const _SinusoidalsDemo({Key? key}) : super(key: key);


  static const _amplitude = 50.0;
  static const _waves = 1.7;
  static const _height = 220.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Sinusoidals(
          key: UniqueKey(),
          itemCount: _colors.length,
          builder: (context, index) {
            return SinusoidalItem(
              model: SinusoidalModel(
                formular: WaveFormular.standing,
                amplitude: _amplitude,
                waves: _waves,
                translate: 3.0 * (index! + 1),
                center: 5.0 * (index + 1),
                frequency: 0.5,
              ),
              child: Container(
                height: _height,
                color: _colors[index],
              ),
            );
          },
        ),
      ],
    );
  }
}

class _SinusoidalDemo extends StatelessWidget {
  const _SinusoidalDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 32),
        Sinusoidal(
          key: UniqueKey(),
          reverse: true,
          model: const SinusoidalModel(
            amplitude: 15,
            waves: 5,
            frequency: -0.5,
          ),
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 50),
        Sinusoidal(
          key: UniqueKey(),
          model: const SinusoidalModel(
            amplitude: 15,
            waves: 5,
          ),
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 50),
        Sinusoidal(
          key: UniqueKey(),
          model: const SinusoidalModel(
            formular: WaveFormular.standing,
            translate: 5.0,
            amplitude: 25,
            waves: 2,
            frequency: 0.5,
          ),
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 50),
        Sinusoidal(
          key: UniqueKey(),
          model: const SinusoidalModel(
            formular: WaveFormular.travelling,
            amplitude: 25,
            waves: 2.5,
            frequency: 0.5,
          ),
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class _CombinedWaveDemo extends StatelessWidget {
  const _CombinedWaveDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 32),
        CombinedWave(
          key: UniqueKey(),
          reverse: true,
          models: const [
            SinusoidalModel(
              amplitude: 20,
              waves: 50,
              translate: 2.5,
              frequency: 0.5,
            ),
            SinusoidalModel(
              amplitude: 25,
              waves: 15,
              translate: 7.5,
              frequency: 1.5,
            ),
          ],
          child: Container(
            height: 200,
            color: Colors.blue,
          ),
        ),
        const Spacer(),
        CombinedWave(
          key: UniqueKey(),
          models: const [
            SinusoidalModel(
              amplitude: 25,
              waves: 20,
              translate: 2.5,
              frequency: 0.5,
            ),
            SinusoidalModel(
              amplitude: 25,
              waves: 15,
              translate: 7.5,
              frequency: 1.5,
            ),
          ],
          child: Container(
            height: 200,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class _MagmaWaveDemo extends StatelessWidget {
  const _MagmaWaveDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          MagmaWave(
            key: UniqueKey(),
            child: Container(
              height: 100,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          MagmaWave(
            key: UniqueKey(),
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
