<?php

namespace App\Controllers;

use App\Core\View;
use App\Models\Post;

class MakePostController
{
    public function index()
    {
        if (!isset($_SESSION['user'])) {
            header('Location: ?page=login');
            exit;
        }

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $content = trim($_POST['content']);
            if ($content !== '') {
                Post::create($_SESSION['user']['id'], $content);
                header('Location: ?page=main');
                exit;
            }
        }

        View::render('make_post');
    }
}
