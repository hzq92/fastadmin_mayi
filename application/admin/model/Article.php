<?php

namespace app\admin\model;

use think\Model;


class Article extends Model
{
    // 表名
    protected $name = 'article';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = false;

    // 追加属性
    protected $append = [
        'status_text'
    ];

    protected static function init()
    {
        self::afterInsert(function ($row) {
            $pk = $row->getPk();
            $row->getQuery()->where($pk, $row[$pk])->update(['weigh' => $row[$pk]]);
        });
    }

    public function getStatusList()
    {
        return ['1' => __('Status 1'), '0' => __('Status 0')];
    }

    public function getStatusTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['status']) ? $data['status'] : '');
        $list = $this->getStatusList();
        return isset($list[$value]) ? $list[$value] : '';
    }

    public function getTypesList()
    {
        return ['1' => __('Types 1'), '2' => __('Types 2')];
    }

    public function getTypesTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['types']) ? $data['types'] : '');
        $list = $this->getTypesList();
        return isset($list[$value]) ? $list[$value] : '';
    }

}
