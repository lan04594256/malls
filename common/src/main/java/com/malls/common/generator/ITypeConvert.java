package com.malls.common.generator;


import com.malls.common.enmu.DateType;

/**
 * @author Administrator
 */
public interface ITypeConvert {
    /**
     * @param var1
     * @param var2
     * @return
     */
    IColumnType processTypeConvert(DateType var1, String var2);
}
