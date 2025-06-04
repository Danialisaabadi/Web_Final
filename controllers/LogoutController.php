<?php

namespace App\Controllers;

class LogoutController
{
    public function index(): void
    {
        session_destroy();
        header('Location: ?page=login');
        exit();
    }
}
