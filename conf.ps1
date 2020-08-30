
Param(
    [Parameter(Mandatory=$true)]
  
    [String]
    $status,

    [Parameter(Mandatory=$true)]
    [String]
    $currentpipe,

    [Parameter(Mandatory=$true)]
    [String]
    $BuildNO

    )






#PIPE2

if ($status -eq 'NULL' -and $currentpipe -eq 'NULL')
{
  #CANCEL current pipeline


  #TRIGGER Pipe 1
  echo 'TRIGGER Pipe1'
  $Url = "https://circleci.com/api/v1.1/project/github/ktadepalli/WinService-circle/build?branch=master "
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Circle-Token","22df877158909c8e95b5f5e41e712a0a346d7ca2")
$headers.Add("Content-Type","application/json")


invoke-restmethod -uri $url -header $headers -method post
  echo "Executing Dependency Step- PIPE1"
exit 1
}
else
{
      if ($status -eq 'BLOCKED' -and $currentpipe -eq 'PIPE2')
      {

      #TRIGGER Pipe2

      echo "TRIGGER Pipe2"


      #UPDATE the status
        
      }
      else
      {

        #CANCEL current pipeline

        echo 'TRIGGER Pipe1'
          $Url = "https://circleci.com/api/v1.1/project/github/ktadepalli/WinService-circle/build?branch=master "
          $headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
           $headers.Add("Circle-Token","22df877158909c8e95b5f5e41e712a0a346d7ca2")
            $headers.Add("Content-Type","application/json")


            invoke-restmethod -uri $url -header $headers -method post
         #TRIGGER Pipe 1
        echo "Executing Dependency Step- PIPE1"
      exit 1
      }


}







