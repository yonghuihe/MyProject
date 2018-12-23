package com._520it.com.base.domain;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class ProductSkuProperty extends BaseDomain {
    private Long productSkuId;
    private SkuProperty skuProperty;
    private String value;
    private String image;
}