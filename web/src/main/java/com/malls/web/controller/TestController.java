package com.malls.web.controller;

import com.malls.common.entity.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author lanwenliang
 */
@RestController("test")
@Api(tags = "测试类")
public class TestController {
    @GetMapping("/helloWord")
    @ApiOperation(value = "分页查询自动加款交易流水信息", notes = "作者：<a href=mailto:lanwenliang@yidianlife.com>蓝文良</a>")
    public JsonResult helloWord(String remark) {
        System.out.println(remark);
        return new JsonResult().success(remark + "hello");
    }

}
