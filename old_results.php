<?php 
session_start();
include "config.php";
include "header1.php";

if(!isset($_SESSION["username"]))
{
?>
<script type="text/javascript">
window.location="admin.php";
</script>
<?php 
}
?>
        <div class="breadcrumbs"  style="background-color:green;color:white">
            <div class="col-sm-4">
                <div class="page-header float-left" style="background-color:green;color:white">
                    <div class="page-title">
                        <h1>Results</h1>
                    </div>
                </div>
            </div>
           
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            
                            <div class="card-body">
                               
                                <div class="col-lg-12 " style="min-height: 500px; background-color: #D2CCCC;">
         <center>
            <h1 style="color:black;padding-top:50px;padding-bottom:40px">All Exam Results</h1></center>
           <?php
              $count=0;
                $res=mysqli_query($conn,"select * from exam_results order by id desc");
                $count=mysqli_num_rows($res);
                if($count==0)
              {

                  ?>
                 <center>
                 <h1>No Results Found</h1>
                                  

                </center>
                 <?php

                      }

          else{
           echo "<div>";
           echo "<table class='table table-bordered'>";
           echo "<tr style='background-color:#E11584; color:white'>";

          echo "<th>"; echo "username"; echo "</th>";
          echo "<th>";  echo "exam type"; echo "</th>";
           echo "<th>"; echo "Total Questions"; echo "</th>";
            echo "<th>"; echo "Correct answers";      echo "</th>";
             echo "<th>"; echo "Wrong answers";   echo "</th>";
              echo "<th>"; echo "Exam Time"; echo "</th>";

         echo "</tr>";

while($row=mysqli_fetch_array($res))
{
echo "<tr style='background-color:#097969; color:white'>";

          echo "<td>"; echo $row["username"]; echo "</td>";
          echo "<td>";  echo $row["exam_type"];  echo "</td>";
           echo "<td>"; echo $row["total_question"];  echo "</td>";
            echo "<td>"; echo $row["correct_answer"];     echo "</td>";
             echo "<td>"; echo $row["wrong_answer"];   echo "</td>";
              echo "<td>"; echo $row["exam_time"];  echo "</td>";

         echo "</tr>";

}

         echo "</table>";

         echo "</div>";
}
                
                 



?>
     
</div>
                                   

                            </div>
                        </div> 

                    </div>
                    <!--/.col-->

                                            
                                            
                                                   
                                            </div>
                                        </div><!-- .animated -->
                                    </div><!-- .content -->
    <?php
include "footer1.php";
?>