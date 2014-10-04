omxcontrol
==========

Dart module to control omxplayer. Specifically written for the raspberry pi

Requirements
------------

* omxplayer (installed by default on the raspberry pi raspian image)
* dart (There is no official binary now. You can get dart-sdk built by Johan Van den Neste [here](https://drive.google.com/file/d/0B6jtDQV7b1aGczZMWGk4dzR2Szg) )


Install
-------

Add omxcontrol as a dependency in pubspec.yaml:

    dependencies:
        omxcontrol: any

get it `pub get`,

and import it `import 'package:omxcontrol/omxcontrol.dart';`.

Usage
-----

Basic usage

    omx = new OmxControl();

    omx.start(filename);

    omx.pause();

    omx.quit();

