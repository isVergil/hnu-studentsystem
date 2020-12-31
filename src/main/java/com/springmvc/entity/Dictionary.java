package com.springmvc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Dictionary {
    private Long id;
    private Long parentid;
    private String name;
    private String remarks;
}
