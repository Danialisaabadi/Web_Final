<?php include 'views/navbar.php'; ?>

<h1>Register</h1>

<?php if (!empty($error)): ?>
    <div class="error-message"><?= htmlspecialchars($error) ?></div>
<?php endif; ?>

<form method="post" class="register-form" novalidate>
    <label for="name">Name:</label>
    <input id="name" type="text" name="name" required placeholder="Your full name" autocomplete="name" value="">

    <label for="email">Email:</label>
    <input id="email" type="email" name="email" required placeholder="your.email@example.com" autocomplete="email" value="">

    <label for="password">Password:</label>
    <div class="password-wrapper">
        <input id="password" type="password" name="password" required placeholder="Enter your password" autocomplete="new-password" value="">
        <button type="button" class="toggle-password" aria-label="Show password" title="Show password"></button>
    </div>

    <label for="password2">Confirm Password:</label>
    <div class="password-wrapper">
        <input id="password2" type="password" name="password2" required placeholder="Repeat your password" autocomplete="new-password" value="">
        <button type="button" class="toggle-password" aria-label="Show confirm password" title="Show confirm password"></button>
    </div>

    <button type="submit">Register</button>
</form>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap');

  body {
    font-family: 'Inter', sans-serif;
    background-color: #fafafa;
    max-width: 720px;
    margin: 20px auto;
    padding: 0 20px 40px;
    color: #333;
  }

  h1 {
    font-weight: 700;
    font-size: 2.5rem;
    margin-bottom: 24px;
    color: #1f2937;
    user-select: none;
    text-align: left;
  }

  .error-message {
    background-color: #fee2e2;
    color: #991b1b;
    padding: 14px 20px;
    border-radius: 10px;
    margin-bottom: 20px;
    font-weight: 700;
    box-shadow: 0 0 15px rgba(153, 27, 27, 0.25);
    user-select: text;
  }

  form.register-form {
    display: flex;
    flex-direction: column;
    gap: 18px;
    background: #fff;
    padding: 32px 28px;
    border-radius: 16px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.07);
    user-select: none;
  }

  form.register-form label {
    font-weight: 600;
    font-size: 1rem;
    color: #374151;
  }

  form.register-form input {
    padding: 14px 18px;
    font-size: 1rem;
    border: 2px solid #d1d5db;
    border-radius: 12px;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
    outline-offset: 2px;
    font-family: 'Inter', sans-serif;
    user-select: text;
    width: 100%;
    box-sizing: border-box;
  }

  form.register-form input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 8px rgba(37, 99, 235, 0.6);
  }

  .password-wrapper {
    position: relative;
    display: flex;
    align-items: center;
  }

  .toggle-password {
    position: absolute;
    right: 12px;
    background: transparent;
    border: none;
    cursor: pointer;
    color: #6b7280;
    user-select: none;
    padding: 4px;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: color 0.3s ease;
    width: 28px;
    height: 28px;
    border-radius: 50%;
  }

  .toggle-password:hover,
  .toggle-password:focus {
    color: #2563eb;
    outline: none;
    background-color: rgba(37, 99, 235, 0.1);
  }

  form.register-form button[type="submit"] {
    margin-top: 10px;
    padding: 16px 0;
    font-weight: 700;
    font-size: 1.2rem;
    color: white;
    background-color: #2563eb;
    border: none;
    border-radius: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease, box-shadow 0.3s ease;
    box-shadow: 0 6px 15px rgba(37, 99, 235, 0.5);
  }

  form.register-form button[type="submit"]:hover,
  form.register-form button[type="submit"]:focus-visible {
    background-color: #1e40af;
    box-shadow: 0 8px 25px rgba(30, 64, 175, 0.8);
    outline-offset: 3px;
    outline: 2px solid #1e40af;
  }

  @media (max-width: 480px) {
    form.register-form {
      padding: 28px 20px;
    }
  }
</style>

<script>
  document.addEventListener('DOMContentLoaded', () => {
    const toggleButtons = document.querySelectorAll('.toggle-password');
    toggleButtons.forEach(btn => {
      const input = btn.previousElementSibling;

      const eyeOpenSVG = `
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" width="20" height="20">
          <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
          <path stroke-linecap="round" stroke-linejoin="round" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
        </svg>`;
      const eyeClosedSVG = `
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" width="20" height="20">
          <path stroke-linecap="round" stroke-linejoin="round" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.477 0-8.268-2.943-9.542-7a9.96 9.96 0 012.19-3.337m1.668-1.668A9.956 9.956 0 0112 5c4.478 0 8.268 2.943 9.542 7a9.97 9.97 0 01-4.284 5.142M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
          <path stroke-linecap="round" stroke-linejoin="round" d="M3 3l18 18" />
        </svg>`;

      btn.innerHTML = eyeOpenSVG;

      btn.addEventListener('click', () => {
        if (input.type === 'password') {
          input.type = 'text';
          btn.setAttribute('aria-label', 'Hide password');
          btn.setAttribute('title', 'Hide password');
          btn.innerHTML = eyeClosedSVG;
        } else {
          input.type = 'password';
          btn.setAttribute('aria-label', 'Show password');
          btn.setAttribute('title', 'Show password');
          btn.innerHTML = eyeOpenSVG;
        }
      });
    });
  });
</script>
