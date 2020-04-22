<?php
/**
 * Created by PhpStorm.
 * User: Cyan
 * Date: 2020/4/22
 * Time: 23:45
 */

namespace app\index\model;

use think\Model;

/**
 * 轮播图模型
 */
class Banners extends Model
{
    // 表名
    protected $name = 'banners';
    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';

}
