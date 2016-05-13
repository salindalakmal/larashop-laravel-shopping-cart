<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/hello',function(){
//     return 'Hello World!';
// });

// Route::get('hello', 'Hello@index');
// Route::get('/hello/{name}', 'Hello@show');

 
// Route::get('blade', function () { 
// 	$drinks = array('Vodka','Gin','Brandy');
// 	return view('page', array('name' => 'The Raven','day' => 'Friday','drinks' => $drinks));
// });


// Route::get('/insert', function() {
//     App\Category::create(array('name' => 'Music'));
//     return 'category added';
// });

// Route::get('/read', function() {
//     $category = new App\Category();
    
//     $data = $category->all(array('name','id'));

//     foreach ($data as $list) {
//         echo $list->id . ' ' . $list->name . ' ';
//     }
// });

// Route::get('/update', function() {
//     $category = App\Category::find(6);
//     $category->name = 'HEAVY METAL';
//     $category->save();
    
//     $data = $category->all(array('name','id'));

//     foreach ($data as $list) {
//         echo $list->id . ' ' . $list->name . ' ';
//     }
// });

// Route::get('/delete', function() {
//     $category = App\Category::find(5);
//     $category->delete();
    
//     $data = $category->all(array('name','id'));

//     foreach ($data as $list) {
//         echo $list->id . ' ' . $list->name . ' ';
//     }
// });


Route::get('/','Front@index');
Route::get('/products','Front@products');
Route::get('/products/details/{id}','Front@product_details');
Route::get('/products/categories','Front@product_categories');
Route::get('/products/brands','Front@product_brands');
Route::get('/blog','Front@blog');
Route::get('/blog/{id}','Front@blog_post');
Route::get('/contact-us','Front@contact_us');
Route::get('/cart','Front@cart');
Route::get('/checkout','Front@checkout');
Route::get('/search/{query}','Front@search'); 

Route::post('/cart', 'Front@cart');
Route::post('/cart', 'Front@cart');
Route::post('/cart-remove-item', 'Front@cart_remove_item');
Route::get('/clear-cart', 'Front@clear_cart');
Route::get('/checkout', [
    'middleware' => 'auth',
    'uses' => 'Front@checkout'
]);

// Authentication routes...
Route::get('login', 'Front@login');
Route::post('auth/login', 'Front@authenticate');
Route::get('logout', 'Front@logout');

// Registration routes...
Route::post('/register', 'Front@register');

Route::get('/checkout', [
    'middleware' => 'auth',
    'uses' => 'Front@checkout'
]);



/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | This route group applies the "web" middleware group to every route
  | it contains. The "web" middleware group is defined in your HTTP
  | kernel and includes session state, CSRF protection, and more.
  |
 */

Route::group(['middleware' => ['web'], 'prefix' => 'admin'], function () {
    //Dashboard Route
    Route::get('/', function() {
        return view('admin.dashboard');
    });

    //EShop Data Entry Routes
    Route::resource('brands', 'EShopDataEntry\BrandsController');
    Route::resource('categories', 'EShopDataEntry\categoriesController');
    Route::resource('products', 'EShopDataEntry\ProductsController');

    //EShop Transactions Routes
    Route::resource('customers', 'EShopTransactions\CustomersController');
    Route::resource('orders', 'EShopTransactions\OrdersController');
    Route::resource('product-sales', 'EShopTransactions\ProductSalesController');

    //Frontend Data Entry Routes
    Route::resource('blog-posts', 'FrontendDataEntry\BlogPostsController');
    Route::resource('pages', 'FrontendDataEntry\PagesController');

    //System
    Route::resource('system-users', 'System\UsersController');
    
    Route::resource('database-backup', 'System\SystemController@dbbackup');
    Route::resource('csv-export', 'System\SystemController@csvexport');
    Route::resource('csv-import', 'System\SystemController@csvimport');
});


// API routes...
Route::get('/api/v1/products/{id?}', ['middleware' => 'auth.basic', function($id = null) {
if ($id == null) {
    $products = App\Product::all(array('id', 'name', 'price'));
} else {
    $products = App\Product::find($id, array('id', 'name', 'price'));
}
return Response::json(array(
        'error' => false,
        'products' => $products,
        'status_code' => 200
    ));
}]);


Route::get('/api/v1/categories/{id?}', ['middleware' => 'auth.basic', function($id = null) {
if ($id == null) {
    $categories = App\Category::all(array('id', 'name'));
} else {
    $categories = App\Category::find($id, array('id', 'name'));
}
return Response::json(array(
        'error' => false,
        'user' => $categories,
        'status_code' => 200
    ));
}]);



