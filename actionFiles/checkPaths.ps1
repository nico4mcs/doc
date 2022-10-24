# TOC paths:

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

# Duplicate images:

$images = Get-ChildItem doc/* -Recurse -Include *.gif, *.svg, *.jpeg, *.jpg, *.png

$a=$images.name.toLower()

$b=$a | select –unique


if($a.Length -ne $b.Length){
    throw "At least two images exist with the following name(s):`n$((Compare-object –referenceobject $b –differenceobject $a).inputObject)"
}

