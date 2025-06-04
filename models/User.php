<?php

namespace App\Models;

use App\Core\Database;
use PDO;

class User
{
    public static function getAllSorted(): array
    {
        $db = Database::connect();
        $stmt = $db->query("SELECT id, name, email FROM users ORDER BY name ASC");

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function create(string $name, string $email, string $password): bool
    {
        $db = Database::connect();

        $hashedPassword = hash('sha256', $password);

        $stmt = $db->prepare("INSERT INTO users (name, email, password) VALUES (?, ?, ?)");

        return $stmt->execute([$name, $email, $hashedPassword]);
    }

    public static function findByEmail(string $email): ?array
    {
        $db = Database::connect();

        $stmt = $db->prepare("SELECT * FROM users WHERE email = ?");
        $stmt->execute([$email]);

        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        return $user ?: null;
    }

    public static function getById(int $id): ?array
    {
        $db = Database::connect();
        $stmt = $db->prepare("SELECT id, name FROM users WHERE id = ?");
        $stmt->execute([$id]);

        return $stmt->fetch(PDO::FETCH_ASSOC) ?: null;
    }
}
