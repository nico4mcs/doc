[String[]]$toc = Get-Content .\actionFiles\toc.txt

$FinalFile = ""
$folder = "doc/"

foreach($line in $toc){
    $line = $line.TrimEnd()
    [String]$trimmed = $line.TrimStart()
    [int]$level = $line.Length - $trimmed.Length

    if($trimmed.Length -eq 0){
        continue
    }

    if(!$trimmed.EndsWith(".md")){
        $trimmed = "#" * ($level + 1) + " " + $trimmed
        $FinalFile += "`n$trimmed`n"
    }
    else {
        [String[]]$text = Get-Content ($folder + $trimmed)
            
        foreach($textLine in $text){
            if($textLine.StartsWith("#")){
                $textLine = "#" * ($level) + $textLine
            }
            $FinalFile += "`n$textLine"
        }

        $FinalFile += "`n`n---`n"
    }
}

function copyMedia([String]$extension){
    Get-ChildItem */media/*$extension -Recurse |
    Copy-Item -Destination bin\media\
}

if(!(Test-Path .\bin)){$null = mkdir .\bin}
if(!(Test-Path .\bin\media)){$null = mkdir .\bin\media}

copyMedia(".svg")
copyMedia(".jpeg")
copyMedia(".jpg")
copyMedia(".png")

$FinalFile = $FinalFile.TrimEnd("---`n`n")
Write-Output $FinalFile
