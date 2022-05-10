$Access_1 = $($env:access)
$Key_1 = $($env:key)

$Env:AWS_ACCESS_KEY_ID = "$Access_1" 
$Env:AWS_SECRET_ACCESS_KEY = "$Key_1"

$inital = Initialize-AWSDefaultConfiguration -AccessKey AWS_ACCESS_KEY_ID -SecretKey AWS_SECRET_ACCESS_KEY -Region us-east-1

$path = Get-ChildItem -path  C:\Users\smudunuri\Downloads\sample-s3\* -Recurse -Include *.txt

$latestfile = $path | Sort-Object -Descending -Property LastWriteTime | select -First 3

$latestfile.Name

#  foreach ($copy in $latestfile.Name)
#  {
#      aws s3 cp C:\Users\smudunuri\Downloads\sample-s3\$copy  s3://sample97/test/ 
#  }
