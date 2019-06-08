<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function login(Request $request)
    {
        $user = $request->username;
        $pass = $request->password;
        $model = User::whereUsername($user)->wherePassword($pass)->first();
        if(!empty($model)){
            return response()->json($this->responseFormat($model->toArray()));
        }
        return response()->json($this->responseFormat([],0, 'Usuario o contraseña incorrecta'), 400);
    }

    public function index()
    {
        return response()->json($this->responseFormat(User::all()));
    }

    public function show($id)
    {
        return response()->json($this->responseFormat(User::find($id)));
    }

    public function create(Request $request)
    {
        $model = User::create($request->all());

        return response()->json($this->responseFormat($model), 201);
    }

    public function update($id, Request $request)
    {
        $model = User::findOrFail($id);
        $model->update($request->all());

        return response()->json($this->responseFormat($model), 200);
    }

    public function delete($id)
    {
        User::findOrFail($id)->delete();
        return response($this->responseFormat([],1, 'Deleted Successfully'), 200);
    }
}
