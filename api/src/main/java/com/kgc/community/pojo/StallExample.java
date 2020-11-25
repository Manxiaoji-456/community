package com.kgc.community.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class StallExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StallExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
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

        public Criteria andCarIdIsNull() {
            addCriterion("car_id is null");
            return (Criteria) this;
        }

        public Criteria andCarIdIsNotNull() {
            addCriterion("car_id is not null");
            return (Criteria) this;
        }

        public Criteria andCarIdEqualTo(String value) {
            addCriterion("car_id =", value, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdNotEqualTo(String value) {
            addCriterion("car_id <>", value, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdGreaterThan(String value) {
            addCriterion("car_id >", value, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdGreaterThanOrEqualTo(String value) {
            addCriterion("car_id >=", value, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdLessThan(String value) {
            addCriterion("car_id <", value, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdLessThanOrEqualTo(String value) {
            addCriterion("car_id <=", value, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdLike(String value) {
            addCriterion("car_id like", value, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdNotLike(String value) {
            addCriterion("car_id not like", value, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdIn(List<String> values) {
            addCriterion("car_id in", values, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdNotIn(List<String> values) {
            addCriterion("car_id not in", values, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdBetween(String value1, String value2) {
            addCriterion("car_id between", value1, value2, "carId");
            return (Criteria) this;
        }

        public Criteria andCarIdNotBetween(String value1, String value2) {
            addCriterion("car_id not between", value1, value2, "carId");
            return (Criteria) this;
        }

        public Criteria andCarColorIsNull() {
            addCriterion("car_color is null");
            return (Criteria) this;
        }

        public Criteria andCarColorIsNotNull() {
            addCriterion("car_color is not null");
            return (Criteria) this;
        }

        public Criteria andCarColorEqualTo(String value) {
            addCriterion("car_color =", value, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorNotEqualTo(String value) {
            addCriterion("car_color <>", value, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorGreaterThan(String value) {
            addCriterion("car_color >", value, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorGreaterThanOrEqualTo(String value) {
            addCriterion("car_color >=", value, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorLessThan(String value) {
            addCriterion("car_color <", value, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorLessThanOrEqualTo(String value) {
            addCriterion("car_color <=", value, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorLike(String value) {
            addCriterion("car_color like", value, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorNotLike(String value) {
            addCriterion("car_color not like", value, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorIn(List<String> values) {
            addCriterion("car_color in", values, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorNotIn(List<String> values) {
            addCriterion("car_color not in", values, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorBetween(String value1, String value2) {
            addCriterion("car_color between", value1, value2, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarColorNotBetween(String value1, String value2) {
            addCriterion("car_color not between", value1, value2, "carColor");
            return (Criteria) this;
        }

        public Criteria andCarStateIsNull() {
            addCriterion("car_state is null");
            return (Criteria) this;
        }

        public Criteria andCarStateIsNotNull() {
            addCriterion("car_state is not null");
            return (Criteria) this;
        }

        public Criteria andCarStateEqualTo(Integer value) {
            addCriterion("car_state =", value, "carState");
            return (Criteria) this;
        }

        public Criteria andCarStateNotEqualTo(Integer value) {
            addCriterion("car_state <>", value, "carState");
            return (Criteria) this;
        }

        public Criteria andCarStateGreaterThan(Integer value) {
            addCriterion("car_state >", value, "carState");
            return (Criteria) this;
        }

        public Criteria andCarStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("car_state >=", value, "carState");
            return (Criteria) this;
        }

        public Criteria andCarStateLessThan(Integer value) {
            addCriterion("car_state <", value, "carState");
            return (Criteria) this;
        }

        public Criteria andCarStateLessThanOrEqualTo(Integer value) {
            addCriterion("car_state <=", value, "carState");
            return (Criteria) this;
        }

        public Criteria andCarStateIn(List<Integer> values) {
            addCriterion("car_state in", values, "carState");
            return (Criteria) this;
        }

        public Criteria andCarStateNotIn(List<Integer> values) {
            addCriterion("car_state not in", values, "carState");
            return (Criteria) this;
        }

        public Criteria andCarStateBetween(Integer value1, Integer value2) {
            addCriterion("car_state between", value1, value2, "carState");
            return (Criteria) this;
        }

        public Criteria andCarStateNotBetween(Integer value1, Integer value2) {
            addCriterion("car_state not between", value1, value2, "carState");
            return (Criteria) this;
        }

        public Criteria andCarDescribeIsNull() {
            addCriterion("car_describe is null");
            return (Criteria) this;
        }

        public Criteria andCarDescribeIsNotNull() {
            addCriterion("car_describe is not null");
            return (Criteria) this;
        }

        public Criteria andCarDescribeEqualTo(String value) {
            addCriterion("car_describe =", value, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeNotEqualTo(String value) {
            addCriterion("car_describe <>", value, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeGreaterThan(String value) {
            addCriterion("car_describe >", value, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeGreaterThanOrEqualTo(String value) {
            addCriterion("car_describe >=", value, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeLessThan(String value) {
            addCriterion("car_describe <", value, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeLessThanOrEqualTo(String value) {
            addCriterion("car_describe <=", value, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeLike(String value) {
            addCriterion("car_describe like", value, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeNotLike(String value) {
            addCriterion("car_describe not like", value, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeIn(List<String> values) {
            addCriterion("car_describe in", values, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeNotIn(List<String> values) {
            addCriterion("car_describe not in", values, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeBetween(String value1, String value2) {
            addCriterion("car_describe between", value1, value2, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andCarDescribeNotBetween(String value1, String value2) {
            addCriterion("car_describe not between", value1, value2, "carDescribe");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineIsNull() {
            addCriterion("parkingdeadline is null");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineIsNotNull() {
            addCriterion("parkingdeadline is not null");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineEqualTo(Date value) {
            addCriterionForJDBCDate("parkingdeadline =", value, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineNotEqualTo(Date value) {
            addCriterionForJDBCDate("parkingdeadline <>", value, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineGreaterThan(Date value) {
            addCriterionForJDBCDate("parkingdeadline >", value, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("parkingdeadline >=", value, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineLessThan(Date value) {
            addCriterionForJDBCDate("parkingdeadline <", value, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("parkingdeadline <=", value, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineIn(List<Date> values) {
            addCriterionForJDBCDate("parkingdeadline in", values, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineNotIn(List<Date> values) {
            addCriterionForJDBCDate("parkingdeadline not in", values, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("parkingdeadline between", value1, value2, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andParkingdeadlineNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("parkingdeadline not between", value1, value2, "parkingdeadline");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
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