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
        $kategori = ['Appliances'];
        $sub_kategori = ['Cooling', 'Dispenser', 'Kulkas', 'Mesin Cuci & Pengering', 'Microwaves & Ovens', 'Setrika', 'Small Appliances', 'TV', 'Vacuum Cleaner'];
        $nama_kategori = ['aaa', 'bbb', 'ccc'];

        foreach ($kategori as $k) {
            foreach ($sub_kategori as $sk) {
                foreach ($nama_kategori as $nk) {

                    $rand = rand(1, 4);
                    if ($rand == 3) {
                        $nk = '';
                    }

                    DB::table('categories')->insert([
                        'kategori' => $k,
                        'sub_kategori' => $sk,
                        'nama_kategori' => $nk,
                    ]);
                }
            }
        }
    }
}
