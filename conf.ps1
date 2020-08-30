
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
         #TRIGGER Pipe 1
      
      
      }


}







