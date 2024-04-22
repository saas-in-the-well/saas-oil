package com.api.sample.api.mapper;

import com.api.sample.api.vo.opinet.request.AreaCode;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OpinetMapper {
    void insertAreaCode(AreaCode areaCode);
}
