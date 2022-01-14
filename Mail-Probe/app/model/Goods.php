<?php
namespace app\model;
use think\Model;
//use think\model\concern\SoftDelete;
use think\facade\Db;
class Goods extends Model{
    //use SoftDelete;
    protected $name = 'Goods';
    protected $table = 'mail_goods';
    //protected $deleteTime = 'del_time'; //软删除标记字段
    //protected $defaultSoftDelete = 0; // 软删除字段的默认值
    public function index(){
        $list = Goods::select();
        print_r($list->toArray());
    }
    public function get_all($where,$order='add_time DESC',$p=1,$total=10){
        $count = Goods::where($where)->count();
        $list = Goods::where($where)
        			->order($order)
        			->page($p,$total)
        			->select();
        if($list->isEmpty()){
        	return null;
        }
        $data = $list->toArray();
        $arr = [
        	'count' => ceil($count/$total),
        	'data' => $data
        ];
        return $arr;
    }
    public function getAddTimeAttr($v){
        return date($v);
    }
}