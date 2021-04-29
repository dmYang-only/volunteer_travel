package com.example.dm.volunteer_travel.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "diary_comment")
public class DiaryComment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "content")
    private String content;

    @Column(name = "add_date")
    private Date addDate;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "diary_id")
    private TravelDiary travelDiary;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getAddDate() {
        return addDate;
    }

    public void setAddDate(Date addDate) {
        this.addDate = addDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public TravelDiary getTravelDiary() {
        return travelDiary;
    }

    public void setTravelDiary(TravelDiary travelDiary) {
        this.travelDiary = travelDiary;
    }
}
