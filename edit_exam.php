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
$id= $_GET["id"];
$res=mysqli_query($conn,"select * from exam_category where id=$id");
while($row= mysqli_fetch_array($res))
{
$exam_category=$row["category"];
$exam_time=$row["exam_time_in_minutes"];

}
?>
        <div class="breadcrumbs"  style="background-color:green; color:white">
            <div class="col-sm-4">
                <div class="page-header float-left" style="background-color:green; color:white">
                    <div class="page-title">
                        <h1 >Edit Quiz Categories</h1>
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
                            <div class="card-header" style="background-color:#6c5ce7; color:white"><strong>Edit Quiz Categories</strong></div>
                            <div class="card-body card-block">
                                <div class="form-group"><label for="company" class=" form-control-label">New Quiz Category</label><input type="text" name="examname" placeholder="Add Quiz Category" class="form-control" value="<?php echo $exam_category; ?>"></div>
                                    <div class="form-group"><label for="vat" class=" form-control-label">Quiz Time in Minutes</label><input type="text"  placeholder="Enter Time in Minutes" class="form-control" name="examtime" value="<?php echo $exam_time; ?>"></div>
                                       <div class="form-group">
                                                      <input type="submit" name="submit1" value="Update Quiz" class="btn btn-success"></div> 
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
mysqli_query($conn,"update exam_category set category='$_POST[examname]',exam_time_in_minutes='$_POST[examtime]' where id=$id") or die(mysqli_error($conn));
?>
<script type="text/javascript">

window.location.href="exam_category.php";
</script>
<?php
}    



?>
    <?php
include "footer1.php";
?>