<?php

namespace App\Controllers;

use App\Core\View;
use App\Models\Post;
use App\Models\PostRelation;

class PostController
{
    public function main(): void
    {
        $currentPage = isset($_GET['p']) ? max(1, (int)$_GET['p']) : 1;
        $postsList = Post::getAllPaginated($currentPage);
        View::render('main', ['posts' => $postsList, 'page' => $currentPage]);
    }

    public function popular(): void
    {
        $pageRanks = PostRelation::computePageRank();
        $postsList = Post::getByIds(array_keys($pageRanks));
        usort($postsList, fn($postA, $postB) => $pageRanks[$postB['id']] <=> $pageRanks[$postA['id']]);
        View::render('popular', ['posts' => $postsList, 'ranks' => $pageRanks]);
    }
}
