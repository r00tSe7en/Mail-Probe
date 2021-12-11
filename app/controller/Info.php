<?php
namespace app\controller;
use think\facade\Db;
use think\facade\Request;
use think\response\Image;
use think\exception\HttpResponseException;

class Info{
    public function index(){
        $file = $_SERVER['DOCUMENT_ROOT'].'/info.png';
        if(Request::method() == 'GET'){
            if (Request::has('random','get')){
                $allGet = Request::param();
                //index.php/Info/index/?random=123456&mail=123456@qq.com
                if(strlen($allGet['random']) == 6){
                    if(isset($allGet['mail'])){
                    //开始获取其他信息
                        $allGet['ip'] = $_SERVER['REMOTE_ADDR'];
                        $allGet['agent'] = $_SERVER["HTTP_USER_AGENT"];
                        $allGet['add_time'] = date('Y-m-d H:i:s',time());
                        $insert = Db::table('mail_goods')->insert($allGet);
                        //此处修改Content-type参考：https://www.freesion.com/article/8662608788/
                        //\vendor\topthink\framework\src\think\response\Image.php
                        $image = readfile("$file");
                        $type = array("Content-type", "image/gif");
                        $response = Image::create($image, 'Image')->header($type);
                        throw new HttpResponseException($response);
                    }
                }
            }
        }
    }

}
