<?php include('server.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Like and Dislike system</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="main.css">
  <form action="save.php" method="POST">
	   <input type="text" name="name">
      <input type="submit" name="submit" value="POST">
   </form>
</head>
<body>

  
  
<?php
    isset( $_POST['name'] ) ? $name = $_POST['name'] : $name = "";

    if( !empty( $name ) ) {
        $c = mysqli_connect("localhost", "root", "", "twitty");
        mysqli_query( $c, "SET NAMES UTF8" );

        $sql = " INSERT INTO posts VALUES ( NULL, '{$name}' ) ";
        $q = mysqli_query( $c, $sql );

        mysqli_close( $c );
    }
?>
  <div class="twitty-wrapper">
    
     
   <?php foreach ($posts as $post): ?>
   	<div class="post">
      
	   <?php echo $post['postsnaja']; ?>

      <?php $user_id1 = $post['id']; //id จาก post ?> 
      <?php $sql1 = "SELECT us FROM posts WHERE id = ' $user_id1'";
         $result = mysqli_query($conn, $sql1);
         $user2 = mysqli_fetch_assoc($result); 
         $user3 = $user2['us']; //หา userid
         echo "("."$user3".")" ;
         ?>
      <div class="post-info">
      
      <?php
         $select = mysqli_query($conn, "SELECT * FROM `user_form` WHERE name = '$user3'") or die('query failed');
         if(mysqli_num_rows($select) > 0){
            $fetch = mysqli_fetch_assoc($select);
         }
         if($fetch['image'] == ''){
            echo '<img src="images/default-avatar.png">';
         }else{
            echo '<img src="uploaded_img/'.$fetch['image'].'"width=50 height=50" ">';
            
         }
      ?>
        
	    <!-- if user likes post, style button differently -->
      	<i <?php if (userLiked($post['id'])): ?>
      		  class="fa fa-thumbs-up like-btn"
      	  <?php else: ?>
      		  class="fa fa-thumbs-o-up like-btn"
      	  <?php endif ?>
      	  data-id="<?php echo $post['id'] ?>"></i>
      	<span class="likes"><?php echo getLikes($post['id']); ?></span>
      	
      	&nbsp;&nbsp;&nbsp;&nbsp;

	    <!-- if user dislikes post, style button differently -->
      	<i 
      	  <?php if (userDisliked($post['id'])): ?>
      		  class="fa fa-thumbs-down dislike-btn"
      	  <?php else: ?>
      		  class="fa fa-thumbs-o-down dislike-btn"
      	  <?php endif ?>
      	  data-id="<?php echo $post['id'] ?>"></i>
      	<span class="dislikes"><?php echo getDislikes($post['id']); ?></span>
        
      </div>
   	</div>
    
   <?php endforeach ?>
  </div>
  

  <script src="scripts.js"></script>
</body>
<a href="home.php" class="delete-btn">GO BACK</a>
</html>