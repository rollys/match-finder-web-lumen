<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class Controller extends BaseController
{
    //

    public function responseFormat($data, $status=1, $msg='ok')
    {
        return ['status'=>$status, 'msg' => $msg, 'data' => $data];
    }
}
