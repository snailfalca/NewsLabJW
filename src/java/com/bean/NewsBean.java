/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

import com.entity.News;
import com.model.DBContext;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author rat
 */
public class NewsBean implements Serializable {

    public List<News> getAllNews() throws Exception {
        ArrayList<News> listOfNews = new ArrayList<>();

        Connection conn = new DBContext().getConnection();
        String query = "SELECT * FROM News";
        PreparedStatement ps = conn.prepareStatement(query);

        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String title = rs.getNString("Title"),
                    imagePath = rs.getString("ImagePath"),
                    content = rs.getNString("Content"),
                    writer = rs.getNString("Writer");
            Date publishedDate = rs.getDate("PublishedDate");

            listOfNews.add(new News(title, imagePath, content, writer, publishedDate));
        }

        Collections.sort(listOfNews);
        return listOfNews;
    }

    public List<News> getSearchedNews(String keyword) throws Exception {
        ArrayList<News> listOfNews = new ArrayList<>();

        Connection conn = new DBContext().getConnection();
        String query = "SELECT * FROM News WHERE Title LIKE ?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setNString(1, "%[" + keyword + "]%");

        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String title = rs.getNString("Title"),
                    imagePath = rs.getString("ImagePath"),
                    content = rs.getNString("Content"),
                    writer = rs.getNString("Writer");
            Date publishedDate = rs.getDate("PublishedDate");

            listOfNews.add(new News(title, imagePath, content, writer, publishedDate));
        }

        Collections.sort(listOfNews);
        return listOfNews;
    }
}
