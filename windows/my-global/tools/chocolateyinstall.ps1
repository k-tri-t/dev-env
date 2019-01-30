$package = 'my-global'
$url = "http://adoxa.altervista.org/global/dl.php?f=glo663wb.zip"
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage `
    -PackageName $package `
    -Url $url `
    -UnZipLocation $unzipLocation `
    -Checksum '7F37768622E95E25274B23FAC0178EBB200761D0AB64BC204A73BFFCEC338F4A' `
    -ChecksumType 'sha256'
