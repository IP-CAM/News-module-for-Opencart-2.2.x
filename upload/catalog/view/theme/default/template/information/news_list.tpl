<?php echo $header; ?>
<div class="container">
	<div class="row"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
			<h1><?php echo $heading_title; ?></h1>

		<?php foreach ($all_news as $news) { ?>
			<div class="news-item">
				<h2><a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a></h2>
				<div class="row">
					<img class="thumbnail" src="<?php echo $news['image']; ?>" style="float:left;"/>
					<?php echo $news['description']; ?>
				</div>
				<div class="row">
					<div class="col-md-6">
						<a href="<?php echo $news['view']; ?>"><?php echo $text_more; ?></a>
					</div>
					<div class="col-md-6 text-right">
						<?php echo $news['date_added']; ?>
					</div>
				</div>
		  </div>
		<?php } ?>
			<div class="row">
				<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
				<div class="col-sm-6 text-right"><?php echo $results; ?></div>
			</div>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $column_right; ?>
	</div>
</div>
<?php echo $footer; ?> 