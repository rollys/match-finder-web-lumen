<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Business extends Model
{
    use SoftDeletes;
    protected $fillable = ['business_type', 'name', 'logo', 'description', 'price', 'seating', 'latitude', 'longitude',
        'opening_days', 'init_hour', 'fin_hour'];

}
