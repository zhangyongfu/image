package org.image.model;

public class UserInformation {
    int p_id;
    String email;
    String name;
    String img;
    String birthday;
    String sex;
    String signature;
    String selfintro;
    int belonguserid;

    public UserInformation(){
        p_id=0;
        email="";
        name="";
        img="";
        birthday="";
        sex="保密";
        signature="";
        selfintro="";
        belonguserid=0;
    }

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getSelfintro() {
        return selfintro;
    }

    public void setSelfintro(String selfintro) {
        this.selfintro = selfintro;
    }

    public int getBelonguserid() {
        return belonguserid;
    }

    public void setBelonguserid(int belonguserid) {
        this.belonguserid = belonguserid;
    }
}
