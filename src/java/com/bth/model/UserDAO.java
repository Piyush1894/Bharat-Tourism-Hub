package com.bth.model;

import java.io.Serializable;

public class UserDAO implements Serializable{
   private int id;
   private String name,email,password,mobile,image,status,address;
   public UserDAO(){}

    public UserDAO(int id, String name, String email, String password, String mobile, String image, String status,String address) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.mobile = mobile;
        this.image = image;
        this.status = status;
        this.address=address;
    }

  

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
      public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
   
}
