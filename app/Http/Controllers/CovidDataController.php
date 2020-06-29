<?php

namespace App\Http\Controllers;
use App\Models\CovidData;

class CovidDataController extends Controller{

    public function getData(){
        $data = CovidData::all();

        if(!$data){
            return response([
                'success' => false,
                'message' => "data not found",
            ],400)->header('Content-Type', 'application/json');    
        }
        
        return $data;
    }

}
