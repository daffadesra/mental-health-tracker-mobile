     #!/usr/bin/env bash

     # Install Flutter
     FLUTTER_VERSION="3.24.4"
     FLUTTER_DIR="$HOME/flutter"

     if [ ! -d "$FLUTTER_DIR" ]; then
       git clone https://github.com/flutter/flutter.git -b stable $FLUTTER_DIR
     fi

     export PATH="$FLUTTER_DIR/bin:$PATH"

     # Verify Flutter installation
     flutter doctor

     # Get Flutter dependencies
     flutter pub get