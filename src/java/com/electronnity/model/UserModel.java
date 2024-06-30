/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.model;

public class UserModel {
    private int id;
    private String username;
    private String password;
    private String email;
    private String firstname;
    private String middlename;
    private String lastname;
    private String address;
    private String birthday;
    private String number;
    private String usertype;
    private String attempts;

    public UserModel () {
        
    }
    
    public UserModel (int id, String username, String password, String email, String firstname, String middlename, String lastname, String address, String birthday, String number, String usertype, String attempts) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.firstname = firstname;
        this.middlename = middlename;
        this.lastname = lastname;
        this.address = address;
        this.birthday = birthday;
        this.number = number;
        this.usertype = usertype;
        this.attempts = attempts;
    }
    
    public UserModel (String username, String password, String email, String firstname, String middlename, String lastname, String address, String birthday, String number, String usertype) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.firstname = firstname; 
        this.middlename = middlename;
        this.lastname = lastname;
        this.address = address;
        this.birthday = birthday;
        this.number = number;
        this.usertype = usertype;
    }
    
    public UserModel (String username, String password, String email, String firstname, String middlename, String lastname, String address, String birthday, String number, String usertype, String attempts) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.firstname = firstname; 
        this.middlename = middlename;
        this.lastname = lastname;
        this.address = address;
        this.birthday = birthday;
        this.number = number;
        this.usertype = usertype;
        this.attempts = attempts;
    }
    
    public int getId (){
        return id;
    }
    
    public void setId (int id) {
        this.id = id;
    }
    
    public String getUsername () { 
        return username;
    }
    
    public void setUsername (String username) {
        this.username = username;
    } 
    
    public String getPassword () { 
    return password;
    }
    
    public void setPassword (String password) {
        this.password = password;
    }
    
    public String getEmail () { 
    return email;
    }
    
    public void setEmail (String email) {
        this.email = email;
    }
    
    public String getFirstName () { 
    return firstname;
    }
    
    public void setFirstName (String firstname) {
        this.firstname = firstname;
    } 
    
    public String getMiddleName () { 
    return middlename;
    }
    
    public void setMiddleName (String middlename) {
        this.middlename = middlename;
    } 
    
    public String getLastName () { 
    return lastname;
    }
    
    public void setLastName (String lastname) {
        this.lastname = lastname;
    } 
    
    public String getAddress () { 
    return address;
    }
    
    public void setAddress (String address) {
        this.address = address;
    } 
    
    public String getBirthday () { 
    return birthday;
    }
    
    public void setBirthday (String birthday) {
        this.birthday = birthday;
    } 
    
    public String getNumber () { 
    return number;
    }
    
    public void setNumber (String number) {
        this.number = number;
    }
    
    public String getUserType () {
    return usertype;
    }
    
    public void setUserType (String usertype) {
        this.usertype = usertype;
    }
    
    public String getAttempts (){
        return attempts;
    }
    
    public void setAttempts (String attempts) {
        this.attempts = attempts;
    }

}
