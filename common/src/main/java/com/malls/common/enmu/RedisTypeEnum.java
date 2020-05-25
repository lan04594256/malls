package com.malls.common.enmu;

/**
 * <p>给插入redis的数据定义格式，保证数据唯一，第二方便查看（请求头）</p>
 * @author Administrator
 *
 */
public enum RedisTypeEnum {
    USER("SKU:", "券码锁");
    String key;
    String message;

    private RedisTypeEnum(String key, String message) {
        this.key = key;
        this.message = message;
    }

    public String getKey() {
        return this.key;
    }
}
