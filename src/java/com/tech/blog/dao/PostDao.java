/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;

import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class PostDao {
    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    
    public ArrayList<Category> getAllCategories(){
        ArrayList<Category> list = new ArrayList<Category>();
        try{
            String q = "select * from categories";
            Statement st = con.createStatement();
            ResultSet set = st.executeQuery(q);
            
            while(set.next())
            {
                int cid = set.getInt("cid");
                String name = set.getString("name");
                String description = set.getString("description");
                Category c = new Category(cid, name, description);
                list.add(c);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public boolean savePost(Post p){
        boolean f = false;
        try{
            String q = "insert into posts(pTitle, pContent, pCode, pPic, catId, userId) value(?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, p.getpTitle());
            pstmt.setString(2, p.getpContent());
            pstmt.setString(3, p.getpCode());
            pstmt.setString(4, p.getpPic());
            pstmt.setInt(5, p.getCatid());
            pstmt.setInt(6, p.getUserId());
            
            pstmt.executeUpdate();
            f = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    public List<Post> getAllPosts(){
        List<Post> list = new ArrayList<>();
        //fetch all the post
        try{
            String q = "select * from posts";
            PreparedStatement pstmt = con.prepareStatement(q);
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()){
                int pid = rs.getInt("pid");
                String pTitle = rs.getString("pTitle");
                String pContent = rs.getString("pContent");
                String pCode = rs.getString("pCode");
                String pPic = rs.getString("pPic");
                Timestamp pDate = rs.getTimestamp("pDate");
                int catId = rs.getInt("catId");
                int userId = rs.getInt("userId");
                Post p = new Post(pid, pTitle, pContent, pCode, pPic, pDate, catId, userId);
                
                list.add(p);
                
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Post> getPostByCatId(int catId){
        List<Post> list = new ArrayList<>();
        //get all post by id
        try{
            String q = "select * from posts where catId = ?";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1, catId);
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()){
                int pid = rs.getInt("pid");
                String pTitle = rs.getString("pTitle");
                String pContent = rs.getString("pContent");
                String pCode = rs.getString("pCode");
                String pPic = rs.getString("pPic");
                Timestamp pDate = rs.getTimestamp("pDate");
                
                int userId = rs.getInt("userId");
                Post p = new Post(pid, pTitle, pContent, pCode, pPic, pDate, catId, userId);
                
                list.add(p);
                
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public Post getPostByPostId(int postId){
        Post p = null;
        try{
        String q = "select * from posts where pid=?";
        PreparedStatement pstmt = con.prepareStatement(q);
        pstmt.setInt(1, postId);
        ResultSet rs = pstmt.executeQuery();
        if(rs.next()){
            p = new Post();
                int pid = rs.getInt("pid");
                String pTitle = rs.getString("pTitle");
                String pContent = rs.getString("pContent");
                String pCode = rs.getString("pCode");
                String pPic = rs.getString("pPic");
                Timestamp pDate = rs.getTimestamp("pDate");
                int cid = rs.getInt("catId");
                
                int userId = rs.getInt("userId");
                p = new Post(pid, pTitle, pContent, pCode, pPic, pDate, cid, userId);
        }
        }catch(Exception e){
            e.printStackTrace();
        }
        return p;
    }
}
