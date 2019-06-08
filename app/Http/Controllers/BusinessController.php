<?php

namespace App\Http\Controllers;

use App\Business;
use Illuminate\Http\Request;

class BusinessController extends Controller
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

    public function index()
    {
        return response()->json($this->responseFormat(Business::all()));
    }

    public function show($id)
    {
        return response()->json($this->responseFormat(Business::find($id)));
    }

    public function create(Request $request)
    {
        $model = Business::create($request->all());

        return response()->json($this->responseFormat($model), 201);
    }

    public function update($id, Request $request)
    {
        $model = Business::findOrFail($id);
        $model->update($request->all());

        return response()->json($this->responseFormat($model), 200);
    }

    public function delete($id)
    {
        Business::findOrFail($id)->delete();
        return response($this->responseFormat([],1, 'Deleted Successfully'), 200);
    }
}
