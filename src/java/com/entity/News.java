/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.sql.Date;

/**
 *
 * @author rat
 */
public class News implements Comparable<News> {

    private String title, imagePath, content, writer;
    private Date publishedDate;

    public News(String title, String imagePath, String content, String writer, Date publishedDate) {
        this.title = title;
        this.imagePath = imagePath;
        this.content = content;
        this.writer = writer;
        this.publishedDate = publishedDate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public Date getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(Date publishedDate) {
        this.publishedDate = publishedDate;
    }

    @Override
    public int compareTo(News news) {
        return news.getPublishedDate().compareTo(publishedDate);
    }

}
