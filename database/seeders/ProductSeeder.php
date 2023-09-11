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
        for ($i = 0; $i < 10; $i++) {
            DB::table('products')->insert([
                'nama_produk' => Str::random(10),
                'deskripsi' => Str::random(100),
                'stok' => rand(0, 100),
                'harga' => rand(10000, 100000),
                'category_id' => 1,
            ]);
        }
    }
}
