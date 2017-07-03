<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">
    <article>
        <h1>$Title</h1>
        <div class="content">$Content</div>
        <% if $Blocks %>
            <h2>Content blocks</h2>
            <% loop $Blocks %>
                <div class="content-block">$Content</div>
            <% end_loop %>
        <% end_if %>
    </article>
        $Form
        $CommentsForm
</div>
