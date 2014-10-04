library omxcontrol;

import 'dart:io';

class OmxControl {

  Process _proc = null;

  void start(String fileName) {
    if (_proc != null) {
      _proc.kill();
    }
    Process.start('omxplayer', ['-o', 'hdmi', fileName]).then((process) {
      _proc = process;
    });
  }

  void _sendKey(String key) {
    if (_proc == null) {
      print('omxcontrol: error: player not running');
      return;
    }
    _proc.stdin.write(key);
  }

  void playPause() {
    _sendKey('p');
  }

  void quit() {
    _sendKey('q');
    _proc = null;
  }

  void forward() {
    print('forward');
    _sendKey('>');
  }

  void rewind() {
    print('backward');
    _sendKey('<');
  }

}
