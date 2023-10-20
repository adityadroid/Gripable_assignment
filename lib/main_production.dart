import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gripable_assignment/bootstrap/bootstrap.dart';
import 'package:gripable_assignment/core/ui/ui.dart';
import 'package:gripable_assignment/gen/assets.gen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// This is where you initialize the flavor
  await dotenv.load(fileName: Assets.config.production);
  FlavorConfig.fromMap(
    dotenv.env,
    AppEnvironment.production,
  );
  await bootstrap(
    App.new,
  );
}
