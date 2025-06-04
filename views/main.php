<?php 
include 'views/navbar.php'; 

$page = isset($_GET['p']) ? (int)$_GET['p'] : 1;
$totalPages = isset($totalPages) ? $totalPages : 10; 
?>

<h1>Main Feed</h1>

<?php if (empty($posts)): ?>
  <div class="no-posts">No posts available.</div>
<?php else: ?>
  <div class="posts-container">
    <?php foreach ($posts as $post): ?>
      <article class="post-card" tabindex="0" aria-label="Post by <?= htmlspecialchars($post['user_name']) ?>">
        <header class="post-header">
          <strong class="post-user"><?= htmlspecialchars($post['user_name']) ?></strong>
        </header>
        <section class="post-content">
          <p><?= nl2br(htmlspecialchars($post['content'])) ?></p>
        </section>
        <footer class="post-footer">
          <span class="post-views" aria-label="Number of views">
            <svg xmlns="http://www.w3.org/2000/svg" class="eye-icon" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" aria-hidden="true">
              <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
              <path stroke-linecap="round" stroke-linejoin="round" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
            </svg>
            <?= (int)$post['view_count'] ?>
          </span>
        </footer>
      </article>
    <?php endforeach; ?>
  </div>

  <nav class="pagination" aria-label="Pagination">
    <?php if ($page > 1): ?>
      <a href="?page=main&p=<?= $page - 1 ?>" class="page-link" aria-label="Previous page">← Prev</a>
    <?php else: ?>
      <span class="page-link disabled" aria-disabled="true">← Prev</span>
    <?php endif; ?>

    <span class="page-current" aria-current="page">Page <?= $page ?> of <?= $totalPages ?></span>

    <?php if ($page < $totalPages): ?>
      <a href="?page=main&p=<?= $page + 1 ?>" class="page-link" aria-label="Next page">Next →</a>
    <?php else: ?>
      <span class="page-link disabled" aria-disabled="true">Next →</span>
    <?php endif; ?>
  </nav>
<?php endif; ?>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap');

  body {
    background: linear-gradient(135deg, #e0e7ff 0%, #f9fafb 100%);
    min-height: 100vh;
  }

  h1 {
    font-family: 'Inter', sans-serif;
    font-weight: 700;
    font-size: 2.75rem;
    margin-bottom: 40px;
    color: #1f2937;
    user-select: none;
    max-width: 720px;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
  }

  .no-posts {
    max-width: 720px;
    margin: 0 auto 40px;
    padding: 24px 30px;
    background-color: #f3f4f6;
    color: #6b7280;
    border-radius: 16px;
    text-align: center;
    font-weight: 600;
    box-shadow: 0 8px 25px rgba(0,0,0,0.08);
    user-select: none;
  }

  .posts-container {
    max-width: 720px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    gap: 28px;
  }

  .post-card {
    background-color: #ffffff;
    border-radius: 18px;
    box-shadow: 0 10px 40px rgba(0,0,0,0.08);
    padding: 28px 32px;
    transition: box-shadow 0.4s ease, transform 0.4s ease;
    cursor: default;
    user-select: text;
    opacity: 0;
    transform: translateY(20px);
    animation: fadeInUp 0.6s forwards;
  }
  .post-card:nth-child(1) { animation-delay: 0.1s; }
  .post-card:nth-child(2) { animation-delay: 0.2s; }
  .post-card:nth-child(3) { animation-delay: 0.3s; }
  .post-card:nth-child(4) { animation-delay: 0.4s; }
  /* اضافه کن برا بقیه */

  .post-card:hover,
  .post-card:focus {
    box-shadow: 0 18px 50px rgba(37, 99, 235, 0.3);
    transform: translateY(-10px);
    outline: none;
  }

  .post-user {
    font-weight: 700;
    font-size: 1.4rem;
    color: #2563eb;
    margin-bottom: 14px;
  }

  .post-content p {
    font-size: 1.05rem;
    color: #374151;
    line-height: 1.7;
    margin: 0;
    white-space: pre-wrap;
  }

  .post-footer {
    margin-top: 22px;
    font-size: 0.95rem;
    color: #6b7280;
    display: flex;
    align-items: center;
    gap: 8px;
  }

  .eye-icon {
    width: 20px;
    height: 20px;
    stroke: #2563eb;
    margin-right: 6px;
  }

  .pagination {
    max-width: 720px;
    margin: 40px auto 60px;
    text-align: center;
    font-family: 'Inter', sans-serif;
    user-select: none;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 24px;
  }

  .page-link,
  .page-current {
    display: inline-block;
    padding: 12px 24px;
    font-weight: 700;
    font-size: 1.1rem;
    border-radius: 18px;
    cursor: pointer;
    white-space: nowrap;
    user-select: none;
    text-decoration: none;
    color: #374151;
    border: 2px solid transparent;
    transition: background-color 0.35s ease, color 0.35s ease, border-color 0.35s ease;
  }

  .page-link:hover:not(.disabled),
  .page-link:focus-visible:not(.disabled) {
    background-color: #3b82f6;
    color: white;
    border-color: #3b82f6;
    outline-offset: 3px;
    outline: 2px solid #3b82f6;
  }

  .page-current {
    background-color: #3b82f6;
    color: white;
    border: 2px solid #3b82f6;
    cursor: default;
  }

  .page-link.disabled {
    color: #9ca3af;
    cursor: default;
    border-color: transparent;
  }

  @media (max-width: 480px) {
    h1 {
      font-size: 2.25rem;
      margin-bottom: 32px;
    }
    .post-card {
      padding: 24px 26px;
    }
    .post-user {
      font-size: 1.25rem;
      margin-bottom: 12px;
    }
    .post-content p {
      font-size: 1rem;
    }
    .pagination {
      gap: 16px;
    }
    .page-link,
    .page-current {
      padding: 10px 18px;
      font-size: 1rem;
    }
  }

  @keyframes fadeInUp {
    from {
      opacity: 0;
      transform: translateY(20px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }
</style>
