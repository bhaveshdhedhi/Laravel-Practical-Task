<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Mail;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'phone' => 'required|min:11',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'firstname' => $data['firstname'],
            'lastname' => $data['lastname'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'password' => bcrypt($data['password']),
        ]);
    }

    protected function register(Request $request)
    {
        $input = $request->all();
        $validator = $this->validator($input);
        if ($validator->fails()) {
            return Redirect(route('register'))->withErrors($validator->errors());
        }
        if($validator->passes()){
            $data = $this->create($input)->toArray();           

            $data['token'] = str_random(25);
            $user = User::find($data['id']);
            $user->token = $data['token'];
            $user->save();

            Mail::send('mails.confirmation',$data, function($message) use($data){
                $message->to($data['email']);
                $message->subject('Verify your email for registration');
            });
            return redirect(route('login'))->with('status','Email confirmation link sent on your email. please verify email by clicking on it.');
        }
        return redirect(route('login'))->with('status','Something went wrong. please try again.');
    }    

    public function confirmation($token){
        $user = User::where('token',$token)->first();
        if(!is_null($user)){
            $user->confirmed = 1;
            $user->token = "";
            $user->save();
            return redirect(route('login'))->with('status','Your email verified successfully.you can login now.');
        }    
        return redirect(route('login'))->with('status','Something went wrong.please try again'); 
    }  
}

