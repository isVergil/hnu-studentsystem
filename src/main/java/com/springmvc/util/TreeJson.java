package com.springmvc.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class TreeJson {
    //全局变量
    private List<Map<String, Object>> treeMap = new ArrayList<Map<String, Object>>();

    /**
     * 递归算法解析成树形结构
     *
     * @param pid
     */
    public Map recursiveTree(String pid) {
        Map node = getNodeById(pid);
        List<Map<String, Object>> childrenList = new ArrayList<Map<String, Object>>();
        if (null == node) {
            return node;
        }
        List<Map<String, Object>> childTreeNodes = getChildTreeById(pid);
        for (Map child : childTreeNodes) {
            Map n = recursiveTree(String.valueOf(child.get("ID")));
            childrenList.add(n);
        }
        node.put("children", childrenList);
        return node;
    }

    /**
     * 根据pid查询节点对象
     */
    public Map getNodeById(String pid) {
        for (Map node : treeMap) {
            if (null != pid) {
                if (pid.equals(node.get("id"))) {
                    return node;
                }
            }
        }
        return null;
    }

    /**
     * 根据父节点pid获取所有了节点
     */
    public List<Map<String, Object>> getChildTreeById(String pid) {
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        if (null != treeMap) {
            for (Map node : treeMap) {
                if (null != pid) {
                    if (pid.equals(node.get("parentid"))) {
                        list.add(node);
                    }
                }
            }
        }
        return list;
    }

}
