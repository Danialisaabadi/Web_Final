<?php

namespace App\Models;

use App\Core\Database;
use PDO;

class PostRelation
{
    public static function getRelations(): array
    {
        $db = Database::connect();
        $stmt = $db->query("SELECT post_1_id, post_2_id FROM post_relation");
        $graph = [];

        foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $row) {
            $graph[$row['post_1_id']][] = $row['post_2_id'];
        }

        return $graph;
    }

    public static function computePageRank(float $damping = 0.85, int $iterations = 20): array
    {
        $graph = self::getRelations();
        $allNodes = array_unique(array_merge(array_keys($graph), ...array_values($graph)));
        $nodeCount = count($allNodes);
        $ranks = array_fill_keys($allNodes, 1.0 / $nodeCount);

        for ($i = 0; $i < $iterations; $i++) {
            $newRanks = array_fill_keys($allNodes, (1 - $damping) / $nodeCount);
            foreach ($graph as $from => $tos) {
                $share = $ranks[$from] / count($tos);
                foreach ($tos as $to) {
                    $newRanks[$to] += $damping * $share;
                }
            }
            $ranks = $newRanks;
        }

        arsort($ranks);
        return $ranks;
    }
}
