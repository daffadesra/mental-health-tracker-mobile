    #!/usr/bin/env bash

    # Define Flutter version and directory
    FLUTTER_VERSION="stable"
    FLUTTER_DIR="$HOME/flutter"

    # Clone Flutter if not already present
    if [ ! -d "$FLUTTER_DIR" ]; then
      git clone https://github.com/flutter/flutter.git -b $FLUTTER_VERSION $FLUTTER_DIR
    fi

    # Add Flutter to PATH
    export PATH="$FLUTTER_DIR/bin:$PATH"

    # Verify Flutter installation
    flutter doctor

    # Get Flutter dependencies
    flutter pub get