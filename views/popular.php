<?php include 'views/navbar.php'; ?>

<h1>Popular Posts</h1>

<?php if (empty($posts)): ?>
  <div class="no-posts">No popular posts available.</div>
<?php else: ?>
  <div class="posts-container">
    <?php foreach ($posts as $post): 
      $userName = htmlspecialchars($post['user_name']);
      $content = htmlspecialchars($post['content']);
      $views = (int)$post['view_count'];
      $pageRank = round($ranks[$post['id']], 5);
    ?>
      <article class="post-card" tabindex="0" aria-label="Popular post by <?= $userName ?>">
        <header class="post-header">
          <strong class="post-user"><?= $userName ?></strong>
        </header>
        <section class="post-content">
          <p><?= nl2br($content) ?></p>
        </section>
        <footer class="post-footer">
          <div class="stats-item" aria-label="Number of views">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
              <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
              <circle cx="12" cy="12" r="3"></circle>
            </svg>
            <span><?= $views ?></span>
          </div>
          <div class="stats-item" aria-label="PageRank score">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
              <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h7l7 7v9a2 2 0 0 1-2 2z"></path>
              <polyline points="12 7 12 12 17 12"></polyline>
            </svg>
            <span>PageRank: <?= $pageRank ?></span>
          </div>
        </footer>
      </article>
    <?php endforeach; ?>
  </div>
<?php endif; ?>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap');

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
    box-shadow: 0 8px 25px rgba(0,0,0,0.07);
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
    background: linear-gradient(135deg, #ffffff, #f0f4ff);
    border-radius: 20px;
    box-shadow: 0 12px 35px rgba(37, 99, 235, 0.15);
    padding: 28px 32px;
    transition: box-shadow 0.4s ease, transform 0.4s ease;
    cursor: default;
    user-select: text;
    display: flex;
    flex-direction: column;
    gap: 18px;
  }

  .post-card:hover,
  .post-card:focus {
    box-shadow: 0 20px 60px rgba(37, 99, 235, 0.35);
    transform: translateY(-8px);
    outline: none;
  }

  .post-header {
    display: flex;
    align-items: center;
  }

  .post-user {
    font-weight: 700;
    font-size: 1.4rem;
    color: #2563eb;
  }

  .post-content p {
    font-size: 1.05rem;
    color: #374151;
    line-height: 1.7;
    margin: 0;
    white-space: pre-wrap;
  }

  .post-footer {
    display: flex;
    gap: 32px;
    font-size: 0.95rem;
    color: #6b7280;
  }

  .stats-item {
    display: flex;
    align-items: center;
    gap: 8px;
    user-select: none;
  }

  .stats-item .icon {
    width: 20px;
    height: 20px;
    stroke: #2563eb;
  }

  @media (max-width: 480px) {
    h1 {
      font-size: 2.25rem;
      margin-bottom: 32px;
    }
    .post-card {
      padding: 24px 26px;
      gap: 14px;
    }
    .post-user {
      font-size: 1.25rem;
    }
    .post-content p {
      font-size: 1rem;
    }
    .post-footer {
      gap: 20px;
      font-size: 0.9rem;
    }
  }
</style>
