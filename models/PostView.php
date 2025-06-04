<?php

namespace App\Models;

use App\Core\Database;
use PDO;

class PostView
{
    public static function getViews(): array
    {
        $db = Database::connect();
        $stmt = $db->query("SELECT post_id, views FROM post_views");

        $result = [];
        foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $row) {
            $result[$row['post_id']] = (int) $row['views'];
        }

        return $result;
    }
}
