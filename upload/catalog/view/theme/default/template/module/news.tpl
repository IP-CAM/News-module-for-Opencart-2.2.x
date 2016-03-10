<?php foreach ($all_news as $news) { ?>
	<div class="box-news">
		<h3><?php echo $news['title']; ?></h3>
	<a href="<?php echo $news['view']; ?>"><img src="<?php echo $news['img']; ?>" class="thumbnail" style="float:left;"></a>
	<?php echo $news['description']; ?>
	<p>
		<a href="<?php echo $news['view']; ?>"><?php echo $text_more; ?></a>
		 <?php echo $news['date_added']; ?> 
	</p>
	</div>
  <?php } ?>