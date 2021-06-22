Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install python -y

python -m pip install -U pip

choco install git.install -params '"/GitOnlyOnPath"' -y

pip install azure-cognitiveservices-vision-computervision

cd C:\
mkdir code
cd code
git clone https://github.com/MicrosoftLearning/mslearn-ai900.git
