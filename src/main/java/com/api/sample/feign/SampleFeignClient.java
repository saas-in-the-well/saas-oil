package com.api.sample.feign;

import com.api.sample.apiTest.vo.SampleVO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;

@FeignClient(name="test", url="${api.url}")
public interface SampleFeignClient {

    @PostMapping("/apiTestP")
    public SampleVO test(@RequestHeader("traceUUID") String headers, SampleVO sampleVO);
}