-- Question 1
SELECT * FROM users;

-- Question 2
SELECT username, location FROM users;

-- Question 3
SELECT * FROM users WHERE age > 50;

-- Question 4
SELECT first_name, last_name, location FROM users WHERE location = 'Saxilby, UK' AND age > 40;

-- Question 6
SELECT user_id, text_content FROM blog_posts WHERE user_id IN (3, 6);

-- Question 8
INSERT INTO blog_posts (text_content, user_id) VALUES ('Hello World', 1);

-- Question 9
UPDATE blog_posts SET user_id=5 WHERE text_content='Hello World';

-- Question 10
SELECT users.location, post_comments.text_content
FROM users
LEFT JOIN post_comments ON users.id = post_comments.user_id;

-- Question 11
SELECT blog_posts.text_content, post_comments.text_content
FROM blog_posts
INNER JOIN post_comments ON blog_posts.id = post_comments.post_id;

-- Question 12
SELECT blog_posts.text_content, post_comments.text_content, users.username
FROM blog_posts
INNER JOIN post_comments ON blog_posts.id = post_comments.post_id
INNER JOIN users ON users.id = post_comments.user_id;

-- Question 13
INSERT INTO post_comments (post_id, reply_to, user_id, text_content) VALUES
  (
    (
      SELECT id FROM blog_posts WHERE text_content LIKE '%Peculiar%'
    ),
    3,
    'Interesting post'
  )
;