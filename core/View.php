<?php

namespace App\Core;

class View
{
    public static function render(string $view, array $data = []): void
    {
        extract($data);
        include __DIR__ . "/../views/{$view}.php";
    }
}
