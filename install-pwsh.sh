# Update package lists
sudo apt-get update

# Install libunwind8 and libssl1.0
# Regex is used to ensure that we do not install libssl1.0-dev, as it is a variant that is not required
sudo apt-get install '^libssl1.0.[0-9]$' libunwind8 -y

# Grab the latest tar.gz. This is for ARM CPUs
wget https://github.com/PowerShell/PowerShell/releases/download/v7.0.0-rc.2/powershell-7.0.0-rc.2-linux-arm64.tar.gz

# Make folder to put powershell
mkdir ~/powershell

# Unpack the tar.gz file
tar -xvf ./powershell-7.0.0-rc.2-linux-arm64.tar.gz -C ~/powershell

# Start PowerShell from bash with sudo to create a symbolic link
sudo ~/powershell/pwsh -c New-Item -ItemType SymbolicLink -Path "/usr/bin/pwsh" -Target "\$PSHOME/pwsh" -Force
