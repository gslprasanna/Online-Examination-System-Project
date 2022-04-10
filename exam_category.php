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
        <div class="breadcrumbs"  style="background-color:green;">
            <div class="col-sm-4">
                <div class="page-header float-left" style="background-color:green;color:white">
                    <div class="page-title">
                        <h1>Add Quiz</h1>
                    </div>
                </div>
            </div>
           
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <form name= "form1" action="" method="post">
                            <div class="card-body">
                               <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header" style="background-color:#6c5ce7; color:white"><strong>Add Quiz Categories</strong></div>
                            <div class="card-body card-block">
                                <div class="form-group"><label for="company" class=" form-control-label">New Quiz Category</label><input type="text" name="examname" placeholder="Add Quiz Category" class="form-control"></div>
                                    <div class="form-group"><label for="vat" class=" form-control-label">Quiz Time in Minutes</label><input type="text"  placeholder="Enter Time in Minutes" class="form-control" name="examtime"></div>
                                       <div class="form-group">
                                                      <input type="submit" name="submit1" value="Add Quiz" class="btn btn-success"></div> 
                                                    </div>
                                                </div>
                                            </div>
                                 <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header" style="background-color:green;">
                                <strong class="card-title" style="background-color:green; color:white">Quiz Categories</strong>
                            </div>
                            <div class="card-body">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr style="background-color:#6c5ce7; color:white">
                                            <th scope="col">#</th>
                                            <th scope="col">Quiz Name</th>
                                            <th scope="col">Quiz time</th>
                                            <th scope="col">Edit</th>
                                            <th scope="col">Delete</th>
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
                                            <td><a href="edit_exam.php?id=<?php echo $row["id"]; ?>">Edit</a></td>
                                            <td> <a href=" delete.php?id=<?php echo $row["id"]; ?>">Delete</a></td>

                                               </tr>
                                              
                                            <?php
                                                           
                                               }
                                            ?>
                                        
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                            </div>
                         </form>
                        </div> 

                    </div>
                    <!--/.col-->

                                            
                                            
                                                   
                                            </div>
 
                                       </div><!-- .animated -->
                                    </div><!-- .content -->


<?php 
if(isset($_POST["submit1"]))
{
mysqli_query($conn,"insert into exam_category values(NULL,'$_POST[examname]','$_POST[examtime]')") or die(mysqli_error($conn));
?>
<script type="text/javascript">
alert("Quiz added sucessfully");
window.location.href=window.location.href;
</script>
<?php
}    



?>
    <?php
include "footer1.php";
?>