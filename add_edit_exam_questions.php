<?php 
include "header1.php";
include "config.php";
session_start();
if(!isset($_SESSION["username"]))
{
?>
<script type="text/javascript">
window.location="admin.php";
</script>
<?php 
}
?>
        <div class="breadcrumbs">
            <div class="col-sm-12" style="background-color:green;">
                <div class="page-header float-left"  style="background-color:green; color:white">
                    <div class="page-title">
                        <h1>Select Quiz Categories for Add and Delete Questions</h1>
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
                               
                             <table class="table table-bordered">
                                    <thead>
                                        <tr style="background-color:#6c5ce7;color:white">
                                            <th scope="col">#</th>
                                            <th scope="col">Quiz Name</th>
                                            <th scope="col">Quiz time</th>
                                            <th scope="col">Select</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                   <?php
                                      $count=0;
                                         $res=mysqli_query($conn,"select * from exam_category");
                                          while($row=mysqli_fetch_array($res))
                                           {
                                           $count=$count+1;
                                             ?>
                                                <tr>
                                            <th scope="row"><?php echo $count;?></th>
                                            <td><?php echo $row["category"];?></td>
                                            <td><?php echo $row["exam_time_in_minutes"];?></td>
                                            <td><a href="add_edit_questions.php?id=<?php echo $row["id"]; ?>">Select</a></td>
                                           

                                               </tr>
                                              
                                            <?php
                                                           
                                               }
                                            ?>
                                        
                                       
                                    </tbody>
                                </table>  
                                   

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