package org.image.model;

public class Img {

    private int imgId;

    private String imgPath;
    private String imgName;
    private String imgUploadTime;

    public int getImgId() {
        return imgId;
    }

    public void setImgId(int imgId) {
        this.imgId = imgId;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        imgPath = imgPath;
    }

    public String getImgUploadTime() {
        return imgUploadTime;
    }

    public void setImgUploadTime(String imgUploadTime) {
        this.imgUploadTime = imgUploadTime;
    }
}
