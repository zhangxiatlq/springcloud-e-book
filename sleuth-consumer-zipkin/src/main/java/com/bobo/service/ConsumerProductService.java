package com.bobo.service;

import org.springframework.cloud.netflix.feign.FeignClient;

/**
 * 调用商品服务
 *
 * @author dengp
 */
@FeignClient("sleuth-product-provider-zipkin")
public interface ConsumerProductService extends ProductService {

}
