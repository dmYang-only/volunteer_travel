package com.example.dm.volunteer_travel.model;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "travel_strategy")
public class TravelStrategy {

    @Id
    @Column(name = "id")
    private String id;


    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "title")
    private String title;

    @Column(name = "strategy_describe")
    private String describe;

    @Column(name = "create_date")
    private Date createDate;

    @Column(name = "strategy_status")
    private Integer status;

    @Column(name = "error_message")
    private String errorMessage;

    @OneToMany(mappedBy = "travelStrategy")
    private List<StrategyComment> strategyCommentList=new ArrayList<StrategyComment>();

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public List<StrategyComment> getStrategyCommentList() {
        return strategyCommentList;
    }

    public void setStrategyCommentList(List<StrategyComment> strategyCommentList) {
        this.strategyCommentList = strategyCommentList;
    }
}
