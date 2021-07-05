package com.example.workyproject.models;


import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;


@Entity
@Table(name = "categories")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    @Size(min = 3, message = "Category Name should be at least 3 characters long")
    private String name;
    @Column(updatable = false)
    private Date createdAt;
    private Date updatedAt;

    private String img;
    
    //RelationShips


    //-------------------------------------------------------------------------------------
    //Categories                                                                           |
    //-------------------------------------------------------------------------------------
    @OneToMany(mappedBy = "category", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    List<User> users;

    //-------------------------------------------------------------------------------------
    //Reviews                                                                              |
    //-------------------------------------------------------------------------------------
    
    @OneToMany(mappedBy = "category",
            fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    List<Service> services;



    //-------------------------------------------------------------------------------------
    //Getters and setters                                                                 |
    //-------------------------------------------------------------------------------------

    public Category() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    

    public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public List<Service> getServices() {
		return services;
	}

	public void setServices(List<Service> services) {
		this.services = services;
	}

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    //-------------------------------------------------------------------------------------
    //Methods                                                                             |
    //-------------------------------------------------------------------------------------
    @PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }

}
