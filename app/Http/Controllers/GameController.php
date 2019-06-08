<?php

namespace App\Http\Controllers;

use App\Game;
use Illuminate\Http\Request;

class GameController extends Controller
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
        return response()->json($this->responseFormat(Game::all()));
    }

    public function show($id)
    {
        return response()->json($this->responseFormat(Game::find($id)));
    }

    public function create(Request $request)
    {
        $model = Game::create($request->all());

        return response()->json($this->responseFormat($model), 201);
    }

    public function update($id, Request $request)
    {
        $model = Game::findOrFail($id);
        $model->update($request->all());

        return response()->json($this->responseFormat($model), 200);
    }

    public function delete($id)
    {
        Game::findOrFail($id)->delete();
        return response($this->responseFormat([],1, 'Deleted Successfully'), 200);
    }
}
