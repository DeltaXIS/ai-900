param (
    [string]$endpoint = "",
    [string]$key = "",
    [string]$location = ""
 )

[System.Environment]::SetEnvironmentVariable('azurecognitiveservicesendpoint', $endpoint, [System.EnvironmentVariableTarget]::Machine)
[System.Environment]::SetEnvironmentVariable('azurecognitiveserviceskey', $key, [System.EnvironmentVariableTarget]::Machine)
[System.Environment]::SetEnvironmentVariable('azurecognitiveserviceslocation', $location, [System.EnvironmentVariableTarget]::Machine)

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install python -y
choco install git.install -y

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
Update-SessionEnvironment

python -m pip install -U pip

pip install azure-cognitiveservices-vision-computervision

cd C:\
mkdir code
cd code
git clone https://github.com/MicrosoftLearning/mslearn-ai900.git
