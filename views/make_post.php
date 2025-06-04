<?php include 'views/navbar.php'; ?>

<h1>Create a New Post</h1>

<form method="post" class="post-form" novalidate>
  <textarea name="content" rows="6" placeholder="What's on your mind?" required></textarea>
  <button type="submit">Post</button>
</form>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap');

  h1 {
    font-family: 'Inter', sans-serif;
    font-weight: 700;
    font-size: 2.5rem;
    margin-bottom: 30px;
    color: #1f2937;
    user-select: none;
    max-width: 720px;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
  }

  form.post-form {
    max-width: 720px;
    margin: 0 auto 40px;
    display: flex;
    flex-direction: column;
    gap: 20px;
  }

  form.post-form textarea {
    width: 100%;
    min-height: 140px;
    padding: 16px 20px;
    font-size: 1.1rem;
    font-family: 'Inter', sans-serif;
    border: 2px solid #d1d5db;
    border-radius: 16px;
    resize: vertical;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
    outline-offset: 3px;
  }

  form.post-form textarea:focus {
    border-color: #2563eb;
    box-shadow: 0 0 8px rgba(37, 99, 235, 0.6);
    outline: none;
  }

  form.post-form button {
    align-self: flex-end;
    padding: 14px 36px;
    font-weight: 700;
    font-size: 1.25rem;
    color: white;
    background-color: #2563eb;
    border: none;
    border-radius: 20px;
    cursor: pointer;
    box-shadow: 0 6px 18px rgba(37, 99, 235, 0.6);
    transition: background-color 0.3s ease, box-shadow 0.3s ease;
  }

  form.post-form button:hover,
  form.post-form button:focus-visible {
    background-color: #1e40af;
    box-shadow: 0 8px 25px rgba(30, 64, 175, 0.8);
    outline-offset: 3px;
    outline: 2px solid #1e40af;
  }

  @media (max-width: 480px) {
    h1 {
      font-size: 2rem;
      margin-bottom: 24px;
    }
    form.post-form textarea {
      font-size: 1rem;
      min-height: 120px;
    }
    form.post-form button {
      padding: 12px 28px;
      font-size: 1.1rem;
    }
  }
</style>
