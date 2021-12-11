<?php
namespace app\controller;
use think\facade\View;
use think\facade\Db;
use think\facade\Request;
use think\facade\Session;
class Login{
    public function index(){
        if(Request::method() == 'POST'){
            $all = Request::param();
            $admin = Db::table('mail_admin')->where('account',$all['account'])->find();
            if(empty($admin)){
                echo json_encode(['code'=>1,'msg'=>'账号或密码错误']);
                exit;
            }
            if(md5($all['pwd']) != $admin['password']){
                echo json_encode(['code'=>1,'msg'=>'账号或密码错误']);
                exit;
            }
            Session::set('uid',$admin['uid']);
            Session::set('account',$admin['account']);
            echo json_encode(['code'=>0,'msg'=>'登陆成功']) ;
        }else{
            $title = '邮箱探针';
            View::assign([
                'title'  => $title
            ]);
            return View::fetch();
        }
    }
}