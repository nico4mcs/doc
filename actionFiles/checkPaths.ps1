[String[]]$toc = Get-Content .\actionFiles\toc.txt

$folder = "doc/"

foreach($line in $toc){
    [String]$trimmed = $line.Trim()

    if($trimmed.Length -eq 0){
        continue
    }

    if($trimmed.EndsWith(".md")){
        if(!(Test-Path $folder$trimmed)){
            throw "`"$trimmed`" not found"
        }
    }
}