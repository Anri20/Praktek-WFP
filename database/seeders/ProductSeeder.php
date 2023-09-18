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
        $gambar = ["Image1", "Image2", "Image3", "Image4", "Image5", "Image6", "Image7", "Image8", "Image9", "Image10"];
        for ($i = 0; $i < 10; $i++) {
            DB::table('products')->insert([
                'nama_produk' => Str::random(10),
                'deskripsi' => Str::random(100),
                'stok' => rand(0, 100),
                'harga' => rand(10000, 100000),
                'gambar' => $gambar[$i],
                'category_id' => rand(1, 21),
            ]);
        }
    }
}
