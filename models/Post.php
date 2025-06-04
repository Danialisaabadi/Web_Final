<?php

namespace App\Models;

use App\Core\Database;
use PDO;

class Post
{
    public static function getAllPaginated(int $page, int $limit = 20): array
    {
        $offset = ($page - 1) * $limit;
        $db = Database::connect();
        $sql = "
            SELECT posts.*, users.name AS user_name, COALESCE(pv.views, 0) AS view_count
            FROM posts
            JOIN users ON posts.user_id = users.id
            LEFT JOIN (
                SELECT post_id, views FROM post_views
            ) pv ON pv.post_id = posts.id
            ORDER BY posts.id DESC
            LIMIT :limit OFFSET :offset
        ";
        $stmt = $db->prepare($sql);
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
        $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function findByIds(array $ids): array
    {
        if (empty($ids)) {
            return [];
        }

        $placeholders = implode(',', array_fill(0, count($ids), '?'));

        $db = Database::connect();
        $stmt = $db->prepare("SELECT * FROM posts WHERE id IN ($placeholders)");
        $stmt->execute($ids);
        $posts = $stmt->fetchAll();

        // Preserve input order
        $postMap = [];
        foreach ($posts as $post) {
            $postMap[$post['id']] = $post;
        }

        $orderedPosts = [];
        foreach ($ids as $id) {
            if (isset($postMap[$id])) {
                $orderedPosts[] = $postMap[$id];
            }
        }

        return $orderedPosts;
    }

    public static function getByIds(array $ids): array
    {
        if (empty($ids)) {
            return [];
        }

        $db = Database::connect();
        $in = implode(',', array_fill(0, count($ids), '?'));
        $sql = "
            SELECT posts.*, users.name AS user_name, COALESCE(pv.views, 0) AS view_count
            FROM posts
            JOIN users ON posts.user_id = users.id
            LEFT JOIN (
                SELECT post_id, views FROM post_views
            ) pv ON pv.post_id = posts.id
            WHERE posts.id IN ($in)
        ";
        $stmt = $db->prepare($sql);
        $stmt->execute($ids);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function create(int $userId, string $content): bool
    {
        $db = Database::connect();

        $stmt = $db->prepare("INSERT INTO posts (user_id, content) VALUES (?, ?)");
        $stmt->execute([$userId, $content]);

        $postId = $db->lastInsertId();

        $viewStmt = $db->prepare("INSERT INTO post_views (post_id, views) VALUES (?, 1)");
        return $viewStmt->execute([$postId]);
    }
}
