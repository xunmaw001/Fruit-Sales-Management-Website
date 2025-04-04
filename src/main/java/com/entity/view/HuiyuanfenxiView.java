package com.entity.view;

import com.entity.HuiyuanfenxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 会员分析
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-02 12:49:12
 */
@TableName("huiyuanfenxi")
public class HuiyuanfenxiView  extends HuiyuanfenxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public HuiyuanfenxiView(){
	}
 
 	public HuiyuanfenxiView(HuiyuanfenxiEntity huiyuanfenxiEntity){
 	try {
			BeanUtils.copyProperties(this, huiyuanfenxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
