<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Backend\Subcategory;
use App\Models\Backend\Category;
use App\Models\Backend\Items;

class Allshow extends Controller
{
    public function showcategory(){
        $cats=Category::all();
         $items=Items::all();
        return view('frontend.home', compact("cats" , "items"));
        // $items=Items::all();
        // return view('frontend.home', compact("cats","items"));
    }

    public function productfunction($id){
    	 $subcats=Subcategory::where('catId',$id)->get();
        return view('frontend.products', compact("subcats"));
        // $subcats=Subcategory::find($id);
        // return view('frontend.products', compact("subcats"));
    }
}
