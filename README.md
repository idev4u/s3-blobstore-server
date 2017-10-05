# s3-blobstore-server

A description of this package.

Dependencies
TODO Add the system module as Dependency

```
...
  .package(url: "https://github.com/nodes-vapor/aws.git", from: "2.0.0")
...
```
and install the vapor CTLS package
https://stackoverflow.com/questions/43070534/openssl-ctls-trouble-with-vapor-2#answer-43070535

### Option 2: Install Vapor's CTLS Package

  2.1 Install (macOS)
  Add Vapor's Homebrew Tap
  ```brew tap vapor/homebrew-tap```

  Update Homebrew and install CTLS

  ```brew update
  brew install ctls
  ```
  Restart your terminal, re-generate your Xcode project (if using Xcode), and try again.

  2.2 Install (Ubuntu)

  Add Vapor's APT repo.

  Quick Script
  ```
  eval "$(curl -sL https://apt.vapor.sh)"
  ```
  Manual
  ```
  wget -q https://repo.vapor.codes/apt/keyring.gpg -O- | sudo apt-key add -
  echo "deb https://repo.vapor.codes/apt $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/vapor.list
  ```
  Update APT and install CTLS.
  ```
  sudo apt-get update
  sudo apt-get install ctls
  ```
  2.3 Done

  swift build and other commands should now work normally.
