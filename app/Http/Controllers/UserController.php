<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function register(Request $request) {
        // validate request
        $data = $request->validate([
            'name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string|confirmed'
        ]);

        // create new user object
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password'])
        ]);

        // create Authentication token
        $token = $user->createToken('someToken')->plainTextToken;

        return response([
            'user' => $user,
            'token' => $token
        ]);
    }

    public function login(Request $request) {
        // validate request
        $data = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

        // check email
        $user = User::where('email', $data['email'])->first();

        // check password
        if(!$user || !Hash::check($data['password'], $user->password)) {
            return response([
                'message' => 'invalid data'
            ], 401);
        }
        

        // create token
        $token = $user->createToken('someToken')->plainTextToken;

        return response([
            'user' => $user,
            'token' => $token
        ]);
    }

    public function logout() {
        auth()->user()->tokens()->delete(); // Remove User's Authentication token.

        return response([
            'message' => 'logged out'
        ]);
    }

}
