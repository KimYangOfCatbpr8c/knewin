<?php
/**
  *+------------------
  * SFDP-超级表单开发平台V5.0
  *+------------------
  * Sfdp 方法类
  *+------------------
  * Copyright (c) 2018~2020 https://cojz8.com All rights reserved.
  *+------------------
  * Author: guoguo(1838188896@qq.com)
  *+------------------ 
  */
namespace sfdp\adaptive;

use think\Db;

use sfdp\lib\unit;

class Functions{
	
	public static function functionSave($data){
		$hasname = Db::name('sfdp_function')->where('fun_name',$data['name'])->find();
		if($hasname){
			return json(['code'=>1,'msg'=>'禁止函数名称重复！']);
		}
		if(!isset($data['id'])){
			$ver = [
				'bill'=>unit::OrderNumber(),
				'title'=>$data['title'],
				'fun_name'=>$data['name'],
				'add_user'=>'Sys',
				'function'=>$data['fun'],
				'add_time'=>time()
			];
			$id = Db::name('sfdp_function')->insertGetId($ver);
			return json(['code'=>0,'msg'=>'操作成功！']);
		}else{
			$ver = [
				'id'=>$data['id'],
				'title'=>$data['title'],
				'fun_name'=>$data['name'],
				'function'=>$data['fun']
			];	
			Db::name('sfdp_function')->update($ver);
			return json(['code'=>0,'msg'=>'操作成功！']);
		}
	}
}