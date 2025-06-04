<?php

namespace App\Controllers;

use App\Core\View;
use App\Models\Post;
use App\Models\PostRelation;
use App\Models\User;

class PopularController
{
    public function index(): void
    {
        $currentPage = isset($_GET['p']) ? max(1, (int) $_GET['p']) : 1;
        $limit = 20;
        $offset = ($currentPage - 1) * $limit;

        $pageRanks = PostRelation::computePageRank(); // post_id => rank
        arsort($pageRanks);

        $paginatedPostIds = array_slice(array_keys($pageRanks), $offset, $limit);
        $postsList = Post::findByIds($paginatedPostIds);

        foreach ($postsList as &$post) {
            $post['user_name'] = User::findById($post['user_id'])['name'] ?? 'Unknown';
            $post['view_count'] = Post::getViewCount($post['id']);
        }

        View::render('popular', [
            'posts' => $postsList,
            'ranks' => $pageRanks,
            'page'  => $currentPage
        ]);
    }
}
