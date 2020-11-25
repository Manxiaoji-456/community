package com.kgc.community.pojo;

import java.util.Date;

public class Stall {
    private Integer id;

    private String carId;

    private String carColor;

    private Integer carState;

    private String carDescribe;

    private Date parkingdeadline;

    private Integer userId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId == null ? null : carId.trim();
    }

    public String getCarColor() {
        return carColor;
    }

    public void setCarColor(String carColor) {
        this.carColor = carColor == null ? null : carColor.trim();
    }

    public Integer getCarState() {
        return carState;
    }

    public void setCarState(Integer carState) {
        this.carState = carState;
    }

    public String getCarDescribe() {
        return carDescribe;
    }

    public void setCarDescribe(String carDescribe) {
        this.carDescribe = carDescribe == null ? null : carDescribe.trim();
    }

    public Date getParkingdeadline() {
        return parkingdeadline;
    }

    public void setParkingdeadline(Date parkingdeadline) {
        this.parkingdeadline = parkingdeadline;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}