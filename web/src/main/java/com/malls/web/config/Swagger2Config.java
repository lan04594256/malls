package com.malls.web.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author Administrator
 */
@Configuration
@EnableSwagger2
public class Swagger2Config {
    public static final String BASE_PACKAGE = "com.lwl";
    @Value("${swagger.enable:false}")
    private boolean enableSwagger;
    public Swagger2Config() {
    }

    @Bean
    public Docket createRestApi() {
        return (
                new Docket(DocumentationType.SWAGGER_2))
                .apiInfo(this.apiInfo())
                //项目是否展示swaggerAPI
                .enable(enableSwagger)
                .select()
                //API 扫描路径  不设置到controller层是因为实体放在其他位置
                .apis(RequestHandlerSelectors.basePackage("com.malls"))
                .paths(PathSelectors.any()).build();
    }

    private ApiInfo apiInfo() {
        return (new ApiInfoBuilder())
                .title("Swagger RESTful APIs")
                .description("Swagger API 服务")
                .termsOfServiceUrl("http://www.yidianlife.com")
                .contact(new Contact("Swagger", "127.0.0.1", "lanweliang@qq.com"))
                .version("1.0").build();
    }
}
