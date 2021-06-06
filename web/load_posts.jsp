<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.dao.LikeDao"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<div class="row">
    <%
        User uu = (User)session.getAttribute("currentUser");
        
        Thread.sleep(1000);
        PostDao d = new PostDao(ConnectionProvider.getConnection());

        int cid = Integer.parseInt(request.getParameter("cid"));
        List<Post> posts = null;
        if (cid == 0) {
            posts = d.getAllPosts();
        } else {
            posts = d.getPostByCatId(cid);
        }

        if (posts.size() == 0) {
            out.println("<h3 class='display-3 text-center'>No posts in this category</h3>");
            return;
        }

        for (Post p : posts) {


    %>
    <div class="col-md-6">
        <div class="card">
            <img class="card-img-top" src="blog_pics/<%= p.getpPic()%>" alt="Card image cap">
            <div class="card-body">
                <B><%= p.getpTitle()%></B>
                <p><%= p.getpContent()%></p>


            </div>
            <div class="card-footer text-center primary-background">

                <%
                    LikeDao ldao = new LikeDao(ConnectionProvider.getConnection());
                    
                %>

                <a href="#!" onclick="doLike(<%= p.getPid() %>,<%= uu.getId()%>)" class="btn btn-outline-light btn-sm" ><i class="fa fa-thumbs-o-up"></i><span class="like-counter"><%=ldao.countLikeOnPost(p.getPid())%></span></a>
                <a href="#!" class="btn btn-outline-light btn-sm" ><i class="fa fa-commenting-o"></i><span>10</span></a>
                <a href="show_blog_page.jsp?post_id=<%=p.getPid()%>" class="btn btn-outline-light btn-sm" >Read more...</a>
            </div>
        </div>
    </div>
    <%

        }

    %>
</div>