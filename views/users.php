<?php include 'views/navbar.php'; ?>

<h1>Users</h1>

<?php if (empty($users)): ?>
  <div class="no-users">No users found.</div>
<?php else: ?>
  <ul class="users-list">
    <?php foreach ($users as $user): ?>
      <li class="user-card" tabindex="0" aria-label="User <?= htmlspecialchars($user['name']) ?>">
        <div class="user-icon" aria-hidden="true">
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="#2563eb" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" width="28" height="28" viewBox="0 0 24 24">
            <path d="M20 21v-2a4 4 0 0 0-3-3.87"></path>
            <path d="M4 21v-2a4 4 0 0 1 3-3.87"></path>
            <circle cx="12" cy="7" r="4"></circle>
          </svg>
        </div>
        <div class="user-info">
          <strong class="user-name"><?= htmlspecialchars($user['name']) ?></strong>
          <span class="user-email"><?= htmlspecialchars($user['email']) ?></span>
        </div>
      </li>
    <?php endforeach; ?>
  </ul>
<?php endif; ?>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap');

  h1 {
    font-family: 'Inter', sans-serif;
    font-weight: 700;
    font-size: 2.75rem;
    margin-bottom: 36px;
    color: #1f2937;
    user-select: none;
    text-align: left;
    max-width: 720px;
    margin-left: auto;
    margin-right: auto;
  }

  .no-users {
    max-width: 720px;
    margin: 0 auto 40px;
    padding: 24px 32px;
    background-color: #f3f4f6;
    color: #6b7280;
    border-radius: 16px;
    text-align: center;
    font-weight: 600;
    box-shadow: 0 6px 20px rgba(0,0,0,0.05);
    user-select: none;
  }

  .users-list {
    max-width: 720px;
    margin: 0 auto;
    list-style: none;
    padding: 0;
    display: flex;
    flex-direction: column;
    gap: 24px;
  }

  .user-card {
    background-color: #ffffff;
    border-radius: 18px;
    box-shadow: 0 6px 18px rgba(0,0,0,0.07);
    padding: 20px 28px;
    display: flex;
    align-items: center;
    gap: 18px;
    transition: box-shadow 0.35s ease, transform 0.35s ease;
    cursor: default;
    user-select: text;
    outline-offset: 4px;
  }

  .user-card:hover,
  .user-card:focus {
    box-shadow: 0 12px 32px rgba(37, 99, 235, 0.3);
    transform: translateY(-6px);
    outline: 2px solid #2563eb;
  }

  .user-icon {
    flex-shrink: 0;
  }

  .user-name {
    font-weight: 700;
    font-size: 1.4rem;
    color: #2563eb;
  }

  .user-email {
    display: block;
    font-weight: 500;
    font-style: italic;
    font-size: 1rem;
    color: #6b7280;
    margin-top: 4px;
  }

  /* Responsive */
  @media (max-width: 480px) {
    h1 {
      font-size: 2.25rem;
      margin-bottom: 28px;
    }
    .user-card {
      padding: 18px 20px;
      gap: 14px;
      flex-direction: column;
      align-items: flex-start;
    }
    .user-name {
      font-size: 1.2rem;
    }
    .user-email {
      font-size: 0.9rem;
    }
  }
</style>
