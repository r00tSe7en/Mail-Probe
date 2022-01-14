<?php
namespace app\controller;
use app\BaseController;
use think\facade\View;
use think\facade\Db;
use think\facade\Request;
use think\facade\Session;
use app\model\Goods;
class Index extends BaseController{
    public function index(){
        $title = '邮箱探针';
        # 右侧列表
    	$param = Request::param();
    	$where = true;
    	$p = isset($param['p']) ? $param['p'] : 1;
    	$db = new Goods();
    	$order = [
    		'add_time DESC',
    		'id DESC'
    	];
    	$right = $db->get_all($where,$order,$p,8);
        View::assign([
            'title'  => $title,
            'right' => $right['data'],
            'count' => $right['count'],
            'p' => $p
        ]);
        return View::fetch();
    }
    public function del(){
    	$id = Request::param('id');
    	$delete = Db::table('mail_goods')->where('id',$id)->delete();
    	if($delete){
    		echo json_encode(['code'=>0,'msg'=>'删除成功']);
            exit;
    	}else{
    		echo json_encode(['code'=>1,'msg'=>'删除失败']);
            exit;
    	}
    }
    public function logout(){
        if(Request::method() == 'GET'){
            $logout = Request::param();
            if($logout['id'] == 1){
                Session::clear();
            }
        }
    }
}