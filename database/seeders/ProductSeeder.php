<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 1; $i <= 3; $i++) {
            DB::table('products')->insert([
                'nama_produk' => Str::random(10),
                'harga_produk' => rand(10000, 50000),
                'category_id' => 1,
            ]);
        }
    }
}
