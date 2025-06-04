<?php

namespace App\Controllers;

use App\Core\View;
use App\Models\Post;

class NewPostController
{
    public function index(): void
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_SESSION['user'])) {
            $postContent = trim($_POST['content']);
            if ($postContent !== '') {
                Post::create($_SESSION['user']['id'], $postContent);
            }
        }
        header('Location: ?page=main');
        exit();
    }
}
