function reinstall-xcode
  sudo rm -rf (xcode-select -print-path)
  sudo rm -rf /Library/Developer/CommandLineTools
  xcode-select --install
end

