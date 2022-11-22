<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class GetUsersController extends Controller
{
    public function getAllUsers() {
        $users = User::all();
        return view('welcome', [
            'users' => $users
        ]);
    }

    public function getAllUsersApi() {
        $users = User::all();
        return response()->json($users);
    }
}
