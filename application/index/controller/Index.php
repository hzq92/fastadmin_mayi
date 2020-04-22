<?php

namespace app\index\controller;

use app\common\controller\Frontend;
use app\index\model\Banners;

class Index extends Frontend
{

    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';

    public function index()
    {
        //轮播图片
        $banners = Banners::all();
        if (!empty($banners)) {
            $this->assign('banners',$banners);
        } else {
            $this->assign('banners',[]);
        }

        $this->assign('test', '5555555555555');

        return $this->view->fetch();
    }

}
