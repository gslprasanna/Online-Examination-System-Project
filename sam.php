
<?php
session_start();
include "config.php";
include "header.php";
$date=date("Y-m-d H:i:s");
$_SESSION["end_time"]=date("Y-m-d H:i:s",strtotime($date."+ $_SESSION[exam_time] minutes"))
?>

        <div class="row" style="margin: 0px; padding:0px; margin-bottom: 30px;">

            <div class="col-lg-6 col-lg-push-3" style="min-height: 600px; background-color: white;">
               <?php
                 $correct=0;
                 $wrong=0;
                 
                if(isset($_SESSION["answer"]))
            {
                 for($i=1;$i<=sizeof($_SESSION["answer"]);$i++)
                 {
                     $answer="";
                     $res= mysqli_query($conn,"select * from questions where category='$_SESSION[exam_category]' && Question_no=$i");
                    while($row=mysqli_fetch_array($res))
                     {
                   $answer=$row["answer"];
                   
                      }
                      if(isset($_SESSION["answer"][$i]))
                       {
                    if($answer==$_SESSION["answer"][$i])

                        {
                             $correct=$correct+1;
                                
                        }

                    else {
                         $wrong=$wrong+1;
                         
                         }


                        }
        else{
           $wrong=$wrong+1;   
           }

                 }


             }


      $count=0;

      $res=mysqli_query($conn,"select * from questions where category='$_SESSION[exam_category]'");
        $count=mysqli_num_rows($res);
        $wrong=$count-$correct;
       echo "<br>";echo "<br>";


           echo "<table class='table table-bordered'>";
           echo "<tr style='background-color:blue; color:white'>";

          echo "<th>"; echo "Total Questions"; echo "</th>";
          echo "<th>";  echo "Correct Answers"; echo "</th>";
           echo "<th>"; echo "Wrong Answers"; echo "</th>";
    
         echo "</tr>";
         echo "<tr>";

          echo "<td>"; echo $count; echo "</td>";
          echo "<td>";  echo $correct;  echo "</td>";
           echo "<td>"; echo $wrong;  echo "</td>";
  

         echo "</tr>";



         echo "</table>";

  

 
                 ?>    
           </div>
           
        </div>

<?php 
if(isset($_SESSION["exam_start"]))
{

$date=date("Y-m-d");
mysqli_query($conn,"insert into exam_results(id,username,exam_type,total_question,correct_answer,wrong_answer,exam_time) values(NULL,'$_SESSION[username]','$_SESSION[exam_category]','$count','$correct','$wrong','$date')"); 

}
if(isset($_SESSION["exam_start"]))
{
unset($_SESSION["exam_start"]);
?>
<script type="text/javascript">

window.location.href=window.location.href;
</script>
<?php
}
?>

<?php
include "footer.php";
?>
