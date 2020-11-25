package com.kgc.community.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ExceptionExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ExceptionExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andSponsorIdIsNull() {
            addCriterion("sponsor_id is null");
            return (Criteria) this;
        }

        public Criteria andSponsorIdIsNotNull() {
            addCriterion("sponsor_id is not null");
            return (Criteria) this;
        }

        public Criteria andSponsorIdEqualTo(Integer value) {
            addCriterion("sponsor_id =", value, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andSponsorIdNotEqualTo(Integer value) {
            addCriterion("sponsor_id <>", value, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andSponsorIdGreaterThan(Integer value) {
            addCriterion("sponsor_id >", value, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andSponsorIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("sponsor_id >=", value, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andSponsorIdLessThan(Integer value) {
            addCriterion("sponsor_id <", value, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andSponsorIdLessThanOrEqualTo(Integer value) {
            addCriterion("sponsor_id <=", value, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andSponsorIdIn(List<Integer> values) {
            addCriterion("sponsor_id in", values, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andSponsorIdNotIn(List<Integer> values) {
            addCriterion("sponsor_id not in", values, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andSponsorIdBetween(Integer value1, Integer value2) {
            addCriterion("sponsor_id between", value1, value2, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andSponsorIdNotBetween(Integer value1, Integer value2) {
            addCriterion("sponsor_id not between", value1, value2, "sponsorId");
            return (Criteria) this;
        }

        public Criteria andHandleIdIsNull() {
            addCriterion("handle_id is null");
            return (Criteria) this;
        }

        public Criteria andHandleIdIsNotNull() {
            addCriterion("handle_id is not null");
            return (Criteria) this;
        }

        public Criteria andHandleIdEqualTo(Integer value) {
            addCriterion("handle_id =", value, "handleId");
            return (Criteria) this;
        }

        public Criteria andHandleIdNotEqualTo(Integer value) {
            addCriterion("handle_id <>", value, "handleId");
            return (Criteria) this;
        }

        public Criteria andHandleIdGreaterThan(Integer value) {
            addCriterion("handle_id >", value, "handleId");
            return (Criteria) this;
        }

        public Criteria andHandleIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("handle_id >=", value, "handleId");
            return (Criteria) this;
        }

        public Criteria andHandleIdLessThan(Integer value) {
            addCriterion("handle_id <", value, "handleId");
            return (Criteria) this;
        }

        public Criteria andHandleIdLessThanOrEqualTo(Integer value) {
            addCriterion("handle_id <=", value, "handleId");
            return (Criteria) this;
        }

        public Criteria andHandleIdIn(List<Integer> values) {
            addCriterion("handle_id in", values, "handleId");
            return (Criteria) this;
        }

        public Criteria andHandleIdNotIn(List<Integer> values) {
            addCriterion("handle_id not in", values, "handleId");
            return (Criteria) this;
        }

        public Criteria andHandleIdBetween(Integer value1, Integer value2) {
            addCriterion("handle_id between", value1, value2, "handleId");
            return (Criteria) this;
        }

        public Criteria andHandleIdNotBetween(Integer value1, Integer value2) {
            addCriterion("handle_id not between", value1, value2, "handleId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdIsNull() {
            addCriterion("laborer_id is null");
            return (Criteria) this;
        }

        public Criteria andLaborerIdIsNotNull() {
            addCriterion("laborer_id is not null");
            return (Criteria) this;
        }

        public Criteria andLaborerIdEqualTo(Integer value) {
            addCriterion("laborer_id =", value, "laborerId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdNotEqualTo(Integer value) {
            addCriterion("laborer_id <>", value, "laborerId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdGreaterThan(Integer value) {
            addCriterion("laborer_id >", value, "laborerId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("laborer_id >=", value, "laborerId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdLessThan(Integer value) {
            addCriterion("laborer_id <", value, "laborerId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdLessThanOrEqualTo(Integer value) {
            addCriterion("laborer_id <=", value, "laborerId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdIn(List<Integer> values) {
            addCriterion("laborer_id in", values, "laborerId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdNotIn(List<Integer> values) {
            addCriterion("laborer_id not in", values, "laborerId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdBetween(Integer value1, Integer value2) {
            addCriterion("laborer_id between", value1, value2, "laborerId");
            return (Criteria) this;
        }

        public Criteria andLaborerIdNotBetween(Integer value1, Integer value2) {
            addCriterion("laborer_id not between", value1, value2, "laborerId");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNull() {
            addCriterion("start_time is null");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNotNull() {
            addCriterion("start_time is not null");
            return (Criteria) this;
        }

        public Criteria andStartTimeEqualTo(Date value) {
            addCriterion("start_time =", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotEqualTo(Date value) {
            addCriterion("start_time <>", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThan(Date value) {
            addCriterion("start_time >", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("start_time >=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThan(Date value) {
            addCriterion("start_time <", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThanOrEqualTo(Date value) {
            addCriterion("start_time <=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeIn(List<Date> values) {
            addCriterion("start_time in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotIn(List<Date> values) {
            addCriterion("start_time not in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeBetween(Date value1, Date value2) {
            addCriterion("start_time between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotBetween(Date value1, Date value2) {
            addCriterion("start_time not between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeIsNull() {
            addCriterion("begin_handle_time is null");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeIsNotNull() {
            addCriterion("begin_handle_time is not null");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeEqualTo(Date value) {
            addCriterion("begin_handle_time =", value, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeNotEqualTo(Date value) {
            addCriterion("begin_handle_time <>", value, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeGreaterThan(Date value) {
            addCriterion("begin_handle_time >", value, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("begin_handle_time >=", value, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeLessThan(Date value) {
            addCriterion("begin_handle_time <", value, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeLessThanOrEqualTo(Date value) {
            addCriterion("begin_handle_time <=", value, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeIn(List<Date> values) {
            addCriterion("begin_handle_time in", values, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeNotIn(List<Date> values) {
            addCriterion("begin_handle_time not in", values, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeBetween(Date value1, Date value2) {
            addCriterion("begin_handle_time between", value1, value2, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andBeginHandleTimeNotBetween(Date value1, Date value2) {
            addCriterion("begin_handle_time not between", value1, value2, "beginHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeIsNull() {
            addCriterion("end_handle_time is null");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeIsNotNull() {
            addCriterion("end_handle_time is not null");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeEqualTo(Date value) {
            addCriterion("end_handle_time =", value, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeNotEqualTo(Date value) {
            addCriterion("end_handle_time <>", value, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeGreaterThan(Date value) {
            addCriterion("end_handle_time >", value, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("end_handle_time >=", value, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeLessThan(Date value) {
            addCriterion("end_handle_time <", value, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeLessThanOrEqualTo(Date value) {
            addCriterion("end_handle_time <=", value, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeIn(List<Date> values) {
            addCriterion("end_handle_time in", values, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeNotIn(List<Date> values) {
            addCriterion("end_handle_time not in", values, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeBetween(Date value1, Date value2) {
            addCriterion("end_handle_time between", value1, value2, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andEndHandleTimeNotBetween(Date value1, Date value2) {
            addCriterion("end_handle_time not between", value1, value2, "endHandleTime");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(Integer value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(Integer value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(Integer value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(Integer value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(Integer value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<Integer> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<Integer> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(Integer value1, Integer value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("type not between", value1, value2, "type");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}