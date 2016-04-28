<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Category;
use App\Product;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Redirect;
use Cart;

class Front extends Controller {

    var $brands;
    var $categories;
    var $products;
    var $title;
    var $description;

    public function __construct() {
        $this->brands = Brand::all(array('name'));
        $this->categories = Category::all(array('name'));
        $this->products = Product::all(array('id','name','price'));
    }

    public function index() {
        return view('directory/home', array('title' => 'Welcome','description' => '','page' => 'home', 'brands' => $this->brands, 'categories' => $this->categories, 'products' => $this->products));
    }

    public function products() {
        return view('directory/products', array('title' => 'Products Listing','description' => '','page' => 'products', 'brands' => $this->brands, 'categories' => $this->categories, 'products' => $this->products));
    }

    public function product_details($id) {
        $product = Product::find($id);
        return view('directory/product_details', array('product' => $product, 'title' => $product->name,'description' => '','page' => 'products', 'brands' => $this->brands, 'categories' => $this->categories, 'products' => $this->products));
    }

    public function product_categories($name) {
        return view('directory/products', array('title' => 'Welcome','description' => '','page' => 'products', 'brands' => $this->brands, 'categories' => $this->categories, 'products' => $this->products));
    }

    public function product_brands($name, $category = null) {
        return view('products', array('title' => 'Welcome','description' => '','page' => 'products', 'brands' => $this->brands, 'categories' => $this->categories, 'products' => $this->products));
    }

    public function blog() {
        return view('directory/blog', array('title' => 'Welcome','description' => '','page' => 'blog', 'brands' => $this->brands, 'categories' => $this->categories, 'products' => $this->products));
    }

    public function blog_post($id) {
        return view('directory/blog_post', array('title' => 'Welcome','description' => '','page' => 'blog', 'brands' => $this->brands, 'categories' => $this->categories, 'products' => $this->products));
    }

    public function contact_us() {
        return view('directory/contact_us', array('title' => 'Welcome','description' => '','page' => 'contact_us'));
    }

    public function login() {
        return view('directory/login', array('title' => 'Welcome','description' => '','page' => 'home'));
    }

    public function logout() {
        return view('directory/login', array('title' => 'Welcome','description' => '','page' => 'home'));
    }

    public function cart() {

        //update/ add new item to cart
        if (Request::isMethod('post')) {
            $product_id = Request::get('product_id');
            $product = Product::find($product_id);
            Cart::add(array('id' => $product_id, 'name' => $product->name, 'qty' => 1, 'price' => $product->price));
        }

        //increment the quantity
        if (Request::get('product_id') && (Request::get('increment')) == 1) {
            $rowId = Cart::search(array('id' => Request::get('product_id')));
            $item = Cart::get($rowId[0]);

            Cart::update($rowId[0], $item->qty + 1);
        }

        //decrease the quantity
        if (Request::get('product_id') && (Request::get('decrease')) == 1) {
            $rowId = Cart::search(array('id' => Request::get('product_id')));
            $item = Cart::get($rowId[0]);

            Cart::update($rowId[0], $item->qty - 1);
        }

        //remove the product
        if (Request::get('product_id') && (Request::get('remove')) == TRUE) {
            $rowId = Cart::search(array('id' => Request::get('product_id')));

            Cart::remove($rowId[0]);
        }

        //destroy the cart
        if (Request::get('destroy') == TRUE) {

            Cart::destroy();

        }


        $cart = Cart::content();

        return view('directory/cart', array('cart' => $cart, 'title' => 'Welcome', 'description' => '', 'page' => 'home'));
    }

    public function checkout() {
        return view('directory/checkout', array('title' => 'Welcome','description' => '','page' => 'home'));
    }

    public function search($query) {
        return view('directory/products', array('title' => 'Welcome','description' => '','page' => 'products'));
    }

}
