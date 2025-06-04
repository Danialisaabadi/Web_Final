<?php

namespace App\Controllers;

use App\Core\View;
use App\Models\User;

class UserController
{
    public function index(): void
    {
        $usersList = User::getAllSorted();
        View::render('users', ['users' => $usersList]);
    }
}
