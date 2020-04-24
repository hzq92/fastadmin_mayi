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
        $banners = Banners::all(array('status'=>1));

        //文章、图片文章、视频文章
        /*
         * @params type int 文章类型：1-文章带视频, 2-文章带图片, 3-纯文章
         */
        $allContent = Banners::table('fa_article')->where(array('status'=>1))->limit(100)->select();

        $articles            = array();
        $articlesWithPicture = array();
        $articlesWithVideo   = array();

        if (!empty($allContent)) {
            foreach ($allContent as $items){
                switch ($items['types']){
                    case 1:
                        array_push($articlesWithVideo,$items);
                        break;
                    case 2:
                        array_push($articlesWithPicture,$items);
                        break;
                    default:
                        array_push($articles,$items);
                        break;
                }
            }
        }

        $this->assign('banners',!empty($banners) ? $banners : []);
        $this->assign('articles',!empty($articles) ? $articles : []);
        $this->assign('articlesWithVideo',!empty($articlesWithVideo) ? $articlesWithVideo : []);
        $this->assign('articlesWithPicture',!empty($articlesWithPicture) ? $articlesWithPicture : []);

        return $this->view->fetch();
    }

}
