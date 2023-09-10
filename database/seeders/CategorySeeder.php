<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $kategori = ['Kecantikan', 'Alat Rumah Tangga', 'Bahan Mentah', 'Bumbu Dapur', 'Permainan'];

        foreach($kategori as $k){
            DB::table('categories')->insert([
                'nama_kategori' => $k
            ]);
        }
    }
}
