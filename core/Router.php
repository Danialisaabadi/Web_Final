<?php

namespace App\Core;

use App\Controllers\AuthController;
use App\Controllers\PostController;
use App\Controllers\UserController;
use App\Controllers\MakePostController;
use App\Controllers\LogoutController;

class Router
{
    public static function route(): void
    {
        $page = $_GET['page'] ?? 'main';

        switch ($page) {
            case 'main':
                (new PostController())->main();
                break;

            case 'users':
                (new UserController())->index();
                break;

            case 'login':
                (new AuthController())->login();
                break;

            case 'register':
                (new AuthController())->register();
                break;

            case 'popular':
                (new PostController())->popular();
                break;

            case 'make_post':
                (new MakePostController())->index();
                break;

            case 'logout':
                (new LogoutController())->index();
                break;

            default:
                echo "404 - Page Not Found";
        }
    }
}
