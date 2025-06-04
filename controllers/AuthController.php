<?php

namespace App\Controllers;

use App\Core\View;
use App\Models\User;

class AuthController
{
    public function register(): void
    {
        $errorMessage = '';

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $nameInput = trim($_POST['name']);
            $emailInput = trim($_POST['email']);
            $passwordInput = $_POST['password'];

            if ($nameInput === '' || $emailInput === '' || $passwordInput === '') {
                $errorMessage = "All fields are required.";
            } else {
                try {
                    User::create($nameInput, $emailInput, $passwordInput);
                    header('Location: ?page=login');
                    exit();
                } catch (\PDOException $exception) {
                    $errorMessage = "Email already exists.";
                }
            }
        }

        View::render('register', ['error' => $errorMessage]);
    }

    public function login(): void
    {
        $errorMessage = '';

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $emailInput = trim($_POST['email']);
            $passwordInput = $_POST['password'];
            $hashedPassword = hash('sha256', $passwordInput);

            $foundUser = User::findByEmail($emailInput);

            if ($foundUser && $foundUser['password'] === $hashedPassword) {
                $_SESSION['user'] = [
                    'id'    => $foundUser['id'],
                    'name'  => $foundUser['name'],
                    'email' => $foundUser['email'],
                ];

                header('Location: ?page=main');
                exit();
            } else {
                $errorMessage = "Invalid email or password.";
            }
        }

        View::render('login', ['error' => $errorMessage]);
    }
}
