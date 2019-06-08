<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBusinessesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('businesses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('rol', 100);
            $table->string('business_type', 100)();
            $table->string('logo', 250);
            $table->string('name', 100);
            $table->texr('description');
            $table->string('price', 100);
            $table->integer('seating', 50);
            $table->string('latitude', 100);
            $table->string('longitude', 100);
            $table->string('opening_days', 100);
            $table->string('init_hour', 100);
            $table->string('fin_hour', 100);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('businesses');
    }
}
