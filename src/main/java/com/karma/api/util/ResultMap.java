package com.karma.api.util;

/**
 * Create By fumengqi on 2020/6/22
 */
public class ResultMap <T>{
    private String message;
    private int code;
    private T data;
    private int count;

    public ResultMap(){
        super();
    }

    public ResultMap(String message, int code){
        super();
        this.message = message;
        this.code = code;
    }

    public ResultMap(String message, int code, T data, int count) {
        this.message = message;
        this.code = code;
        this.data = data;
        this.count = count;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}