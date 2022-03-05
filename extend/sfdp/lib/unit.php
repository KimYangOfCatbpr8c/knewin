<?php
/**
*+------------------
* Tpflow 公共类，模板文件
*+------------------
* Copyright (c) 2006~2018 http://cojz8.cn All rights reserved.
*+------------------
* Author: guoguo(1838188896@qq.com)
*+------------------ 
*/
namespace sfdp\lib;


class unit{
	
	/**
	 * 判断是否是POST
	 *
	 **/
	public static function is_post()
	{
	   return isset($_SERVER['REQUEST_METHOD']) && strtoupper($_SERVER['REQUEST_METHOD'])=='POST';	
	}
	/**
	 * 加载自定义事务驱动文件
	 *
	 * @param  string $class 类
	 * @param  int $id 单据对应的ID编号
	 * @param  int  $run_id 运行中的流程ID
	 * @param  array $data 步骤类
	 */
	public static function LoadClass($class,$id,$run_id='',$data='') {
		$className = unit::gconfig('wf_work_namespace').$class;
		if(!class_exists($className)){
			return -1;
		}
		return new $className($id,$run_id,$data);
	} 
	
	/**
	 * 根据键值加载全局配置文件
	 *
	 * @param string $key 键值
	 */
	public static function gconfig($key) {
		$ret =require ( dirname(dirname(__DIR__) . DIRECTORY_SEPARATOR, 2) . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'sfdp.php');
		return $ret[$key] ?? '';
	}
	static function tab($step = 1, $string = ' ', $size = 4)
	{
		return str_repeat($string, $size * $step);
	}
	static function OrderNumber()
	{
		$code = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'H', 'I');
		return $code[intval(date('Y')) - 2011] . strtoupper(dechex(date('m'))) . date('d') . substr(time(), -5);
	}
}
