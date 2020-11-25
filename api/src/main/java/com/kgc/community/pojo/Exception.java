package com.kgc.community.pojo;

import java.util.Date;

public class Exception {
    private Integer id;

    private Integer sponsorId;

    private Integer handleId;

    private Integer laborerId;

    private Integer status;

    private Date startTime;

    private Date beginHandleTime;

    private Date endHandleTime;

    private Integer type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSponsorId() {
        return sponsorId;
    }

    public void setSponsorId(Integer sponsorId) {
        this.sponsorId = sponsorId;
    }

    public Integer getHandleId() {
        return handleId;
    }

    public void setHandleId(Integer handleId) {
        this.handleId = handleId;
    }

    public Integer getLaborerId() {
        return laborerId;
    }

    public void setLaborerId(Integer laborerId) {
        this.laborerId = laborerId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getBeginHandleTime() {
        return beginHandleTime;
    }

    public void setBeginHandleTime(Date beginHandleTime) {
        this.beginHandleTime = beginHandleTime;
    }

    public Date getEndHandleTime() {
        return endHandleTime;
    }

    public void setEndHandleTime(Date endHandleTime) {
        this.endHandleTime = endHandleTime;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}