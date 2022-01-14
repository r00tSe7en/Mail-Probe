<?php
namespace app\controller;
use app\BaseController;
use think\facade\View;
use think\facade\Session;
use think\facade\Db;
class Url extends BaseController{
    public function index(){
        //echo 'Url';
        $title = '邮箱探针';
        View::assign([
            'title'  => $title
        ]);
        return View::fetch();
        
    }
}