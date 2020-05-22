package com.malls.common.entity;


public class SystemException extends CommonException {
    public SystemException(Integer code, String message, Exception e) {
        super(code, message, e);
    }

    public SystemException(Exception e) {
        super(e);
    }
}
