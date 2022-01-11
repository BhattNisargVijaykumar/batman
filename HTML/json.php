<!DOCTYPE HTML>
<html>  
<body>

<form action="json.php" method="get">
Enter Integer: <input type="number" name="num" id="num"><br>
<input type="submit">
</form>

</body>
</html>
<?php

//$num=readline("Enter Number:");echo $num;

if ($num !== null){
   function recall($num)
   {
   			// Read the JSON file
   			$json = file_get_contents('test_data.json');
   			
   			// Decode the JSON file
   			$json_data = json_decode($json);


   	  foreach ($json_data as $i) 
   	  {
   	  	if ($i->entity_id==$num) 
   	  	{
   	  		# code...
   	  		//echo "id is availab"."<br>";

   	  		$temp=$i->entity_id;

   	  		$i->entity_id=$i->parent_id;

   	  		recall($i->entity_id);

   	  		echo $temp."/";	
   	  	}
   	  	
   	  }
   }

   	recall($num);
}

?>