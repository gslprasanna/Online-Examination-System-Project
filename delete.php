<?php
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
mysqli_query($conn,"delete from exam_category where id=$id");
 header("Location:exam_category.php");
?>
