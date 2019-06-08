<?php

namespace App\Http\Controllers;

use App\Reservation;
use Illuminate\Http\Request;

class ReservationController extends Controller
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
        return response()->json($this->responseFormat(Reservation::all()));
    }

    public function show($id)
    {
        return response()->json($this->responseFormat(Reservation::find($id)));
    }

    public function create(Request $request)
    {
        $model = Reservation::create($request->all());

        return response()->json($this->responseFormat($model), 201);
    }

    public function update($id, Request $request)
    {
        $model = Reservation::findOrFail($id);
        $model->update($request->all());

        return response()->json($this->responseFormat($model), 200);
    }

    public function delete($id)
    {
        Reservation::findOrFail($id)->delete();
        return response($this->responseFormat([],1, 'Deleted Successfully'), 200);
    }
}
