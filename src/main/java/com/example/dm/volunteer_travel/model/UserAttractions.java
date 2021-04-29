package com.example.dm.volunteer_travel.model;


import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user_attractions")
public class UserAttractions {
    @Id
    @Column(name = "id")
    private String id;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToOne
    @JoinColumn(name = "attractions_id")
    private Attractions attractions;

    @Column(name = "userAttractionsDescribe")
    private String describe;

    @Column(name = "createDate")
    private Date createDate;

    @Column(name = "status")
    private String status;// null:预订状态 0：待消费(已付款) 1：已消费(已取票) 2：已退款

    public String getId() { return id; }

    public void setId(String id) { this.id = id; }

    public User getUser() { return user; }

    public void setUser(User user) { this.user = user; }

    public Attractions getAttractions() { return attractions; }

    public void setAttractions(Attractions attractions) { this.attractions = attractions; }

    public String getDescribe() { return describe; }

    public void setDescribe(String describe) { this.describe = describe; }

    public Date getCreateDate() { return createDate; }

    public void setCreateDate(Date createDate) { this.createDate = createDate;}

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
