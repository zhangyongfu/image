package org.image.model;

import org.python.util.PythonInterpreter;

public class PubImg {

    private int pubImageId;
    private String pubImageName;
    private String pubImagePath;
    private String pubImageUploadTime;
    private String pubImageUploadUser;
    private float pubImageSize;

    private ImageMetadata imageMetadata;


    public PubImg(String pubImagePath){
        this.pubImagePath = pubImagePath;
    }

    public PubImg(int pubImageId, String pubImageName, String pubImagePath, String pubImageUploadTime, String pubImageUploadUser, float pubImageSize) {
        this.pubImageId = pubImageId;
        this.pubImageName = pubImageName;
        this.pubImagePath = pubImagePath;
        this.pubImageUploadTime = pubImageUploadTime;
        this.pubImageUploadUser = pubImageUploadUser;
        this.pubImageSize = pubImageSize;
    }



    public ImageMetadata getImageMetadata() {
        return imageMetadata;
    }

    public void setImageMetadata(ImageMetadata imageMetadata) {
        this.imageMetadata = imageMetadata;
    }

    public int getPubImageId() {
        return pubImageId;
    }

    public void setPubImageId(int pubImageId) {
        this.pubImageId = pubImageId;
    }

    public String getPubImageName() {
        return pubImageName;
    }

    public void setPubImageName(String pubImageName) {
        this.pubImageName = pubImageName;
    }

    public String getPubImagePath() {
        return pubImagePath;
    }

    public void setPubImagePath(String pubImagePath) {
        this.pubImagePath = pubImagePath;
    }

    public String getPubImageUploadTime() {
        return pubImageUploadTime;
    }

    public void setPubImageUploadTime(String pubImageUploadTime) {
        this.pubImageUploadTime = pubImageUploadTime;
    }

    public String getPubImageUploadUser() {
        return pubImageUploadUser;
    }

    public void setPubImageUploadUser(String pubImageUploadUser) {
        this.pubImageUploadUser = pubImageUploadUser;
    }

    public float getPubImageSize() {
        return pubImageSize;
    }

    public void setPubImageSize(float pubImageSize) {
        this.pubImageSize = pubImageSize;
    }


}
