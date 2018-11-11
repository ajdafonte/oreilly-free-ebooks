# define variables
$url1 = "http://www.oreilly.com/programming/free/files/"
$url2 = "http://www.oreilly.com/iot/free/files/"
$output = "$PSScriptRoot\"

$files1 = @("modern-java-ee-design-patterns.pdf","object-oriented-vs-functional-programming.pdf","java-the-legend.pdf","introducing-java-8.pdf","a-whirlwind-tour-of-python.pdf",
"20-python-libraries-you-arent-using-but-should.pdf","hadoop-with-python.pdf","how-to-make-mistakes-in-python.pdf","functional-programming-python.pdf","python-in-education.pdf",
"from-future-import-python.pdf","trends-shaping-the-london-tech-scene.pdf","2016-european-software-development-salary-survey.pdf","2016-software-development-salary-survey-report.pdf",
"why-rust.pdf","c++-today.pdf","analyzing-visualizing-data-f-sharp.pdf","rxjava-for-android-app-development.pdf","swift-pocket-reference.pdf","ten-steps-to-linux-survival.pdf",
"open-by-design.pdf","getting-started-with-innersource.pdf","microservices-antipatterns-and-pitfalls.pdf","microservices-vs-service-oriented-architecture.pdf",
"software-architecture-patterns.pdf","migrating-cloud-native-application-architectures.pdf","reactive-microservices-architecture-orm.pdf","engineering-managers-guide-design-patterns.pdf",
"azure-for-developers.pdf")

$files2 = @("ambient-computing.pdf","governing-the-iot.pdf","iot-opportunities-challenges.pdf","creating-functional-teams-for-iot.pdf",
"building-a-hardware-business.pdf","when-hardware-meets-software.pdf","what-is-the-internet-of-things.pdf","software-above-device.pdf","software-hardware-collide.pdf",
"hardware-by-the-numbers.pdf")

# System.Net.WebClient
$wc = New-Object System.Net.WebClient

Write-Host '>> Start download of OReilly free ebooks'

# download block 1
foreach ($element in $files1) { Write-Host "Downloading file: $($element)"; $wc.DownloadFile($url1 + $element, $output + $element) }

# download block2
foreach ($element in $files2) { Write-Host "Downloading file: $($element)"; $wc.DownloadFile($url2 + $element, $output + $element) }

Write-Host '>> End download of files'
