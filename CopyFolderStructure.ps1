#Jonathan Bourbonnais -2019
#This script enable you to copy (mirror) the folder structure of a directory without the files in it. 

#Path to folder you want to copy
$sourceFolder = "C:\temp\test1"

#Path to the new folder
$destinationNewFolder = "C:\temp\test2"

#Copy the folder structure from $sourceFolder to $destinationNewFolder
Get-ChildItem -Recurse $sourceFolder |?{$_.PSIsContainer} | Select-Object Directory  
Copy-Item  -Path $sourceFolder -Destination $destinationNewFolder -Recurse -Filter {PSIsContainer}



