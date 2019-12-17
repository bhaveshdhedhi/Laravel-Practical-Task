<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\Datatbales\Facades\Datatbales;
use Auth;
use App\User;

class UserController extends Controller
{
	
    public function profile(){     	
    	return view('user.profile',array( "user"=> Auth::user()) ); 
    }

    public function updateProfile(Request $request){ 

    	$user = Auth::user();

        $data = $this->validate($request, [
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',            
            'phone' => 'required|numeric|min:11',
            /*'email' => 'required|string|email|max:255|unique:users',*/
            /*'password' => '|min:6|confirmed',*/
        ]);

        $user->firstname = $request['firstname'];
        $user->lastname = $request['lastname'];
        $user->phone = $request['phone'];
       /* $user->email = $request['email'];
        if(!empty($data['password'])){
        	$user->password = $data['password'];
        }*/

        $user->save();
        return back()
            ->with('success','Your profile updated successfully.');
    }

    public function index(){

        $users = User::all();
        return view('user.users',array( "users"=> $users)); 
        //return view('user.users'); 
    }

    public function get_datatable(){
        return Datatbales::eloquent(User::query())->make(true);        
    }

}
