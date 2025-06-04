<nav class="navbar" role="navigation" aria-label="Main navigation">
  <ul class="nav-list">
    <li><a href="?page=main" class="nav-link">Home</a></li>
    <li><a href="?page=users" class="nav-link">Users</a></li>
    <li><a href="?page=popular" class="nav-link">Popular</a></li>
    <?php if (isset($_SESSION['user'])): ?>
      <li><a href="?page=make_post" class="nav-link">Make Post</a></li>
      <li><a href="?page=logout" class="nav-link">Logout</a></li>
      <li class="nav-welcome" aria-label="Welcome message">
        <svg xmlns="http://www.w3.org/2000/svg" class="user-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
          <circle cx="12" cy="7" r="4"></circle>
          <path d="M5.5 21a7 7 0 0 1 13 0"></path>
        </svg>
        Welcome, <?= htmlspecialchars($_SESSION['user']['name']) ?>
      </li>
    <?php else: ?>
      <li><a href="?page=login" class="nav-link">Login</a></li>
      <li><a href="?page=register" class="nav-link">Register</a></li>
    <?php endif; ?>
  </ul>
</nav>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap');

  .navbar {
    max-width: 900px;
    margin: 40px auto 60px;
    padding: 0 24px;
    background: #f9fafb;
    border-radius: 16px;
    box-shadow: 0 8px 24px rgba(0,0,0,0.05);
    user-select: none;
  }

  .nav-list {
    list-style: none;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
    gap: 32px;
    margin: 0;
    padding: 18px 0;
  }

  .nav-list li {
    position: relative;
  }

  .nav-list li:not(:last-child)::after {
    content: "";
    position: absolute;
    right: -20px;
    top: 50%;
    transform: translateY(-50%);
    width: 2px;
    height: 20px;
    background: #e5e7eb;
    border-radius: 1px;
  }

  .nav-link {
    font-family: 'Inter', sans-serif;
    font-weight: 600;
    font-size: 1.1rem;
    color: #374151;
    text-decoration: none;
    padding: 8px 20px;
    border-radius: 12px;
    transition:
      background-color 0.3s ease,
      color 0.3s ease,
      box-shadow 0.3s ease,
      transform 0.15s ease;
    user-select: none;
  }

  .nav-link:hover,
  .nav-link:focus-visible {
    background-color: #3b82f6;
    color: white;
    box-shadow: 0 6px 16px rgba(59, 130, 246, 0.4);
    outline: none;
    transform: translateY(-2px);
  }

  .nav-link:active {
    transform: translateY(0);
    box-shadow: none;
  }

  .nav-welcome {
    font-family: 'Inter', sans-serif;
    font-weight: 600;
    font-size: 1.1rem;
    color: #374151;
    display: flex;
    align-items: center;
    gap: 12px;
    user-select: text;
    padding: 8px 20px;
    border-radius: 14px;
    background: #f3f4f6;
    box-shadow: 0 4px 12px rgba(0,0,0,0.05);
    white-space: nowrap;
  }

  .user-icon {
    width: 22px;
    height: 22px;
    stroke: #374151;
  }

  @media (max-width: 720px) {
    .navbar {
      max-width: 100%;
      margin: 30px 12px 50px;
      padding: 0 16px;
    }
    .nav-list {
      gap: 24px;
      justify-content: center;
    }
    .nav-list li:not(:last-child)::after {
      display: none;
    }
    .nav-welcome {
      font-size: 1rem;
      padding: 6px 16px;
      gap: 8px;
    }
    .nav-link {
      font-size: 1rem;
      padding: 6px 16px;
    }
  }
</style>
