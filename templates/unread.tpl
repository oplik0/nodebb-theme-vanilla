<div class="unread">

	<div class="clearfix">
		<!-- IMPORT partials/breadcrumbs.tpl -->

		<div class="btn-toolbar">
			<div class="pull-left">
				<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
			</div>
			<div class="markread btn-group pull-right category-dropdown-container<!-- IF !topics.length --> hidden<!-- ENDIF !topics.length -->">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					[[unread:mark_as_read]] <span class="caret"></span>
				</button>
				<ul class="dropdown-menu category-dropdown-menu" role="menu">

					<li role="presentation">
						<a id="markSelectedRead" role="menuitem" tabindex="-1" href="#">[[unread:selected]]</a>
					</li>

					<li role="presentation">
						<a id="markAllRead" role="menuitem" tabindex="-1" href="#">[[unread:all]]</a>
					</li>
					<li class="divider"></li>
					{{{each categories}}}
					<li role="presentation" class="category" data-cid="{categories.cid}">
						<a role="menu-item" href="#">{categories.level}<!-- IF categories.icon --><span class="fa-stack" style="{function.generateCategoryBackground}"><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span><!-- ENDIF categories.icon --> {categories.name}</a>
					</li>
					{{{end}}}
				</ul>
			</div>

			<!-- IMPORT partials/category-filter.tpl -->

			<div class="btn-group pull-right">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				{selectedFilter.name} <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					{{{each filters}}}
					<li role="presentation" class="category">
						<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
					</li>
					{{{end}}}
				</ul>
			</div>
		</div>
	</div>

	<hr />

	<div class="category row">
		<div id="category-no-topics" class="alert alert-warning <!-- IF topics.length -->hidden<!-- ENDIF topics.length -->">
			<strong>[[unread:no_unread_topics]]</strong>
		</div>

		<a href="{config.relative_path}/{selectedFilter.url}">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>
		<div class="col-md-12">
			<!-- IMPORT partials/topics_list.tpl -->
			<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>
