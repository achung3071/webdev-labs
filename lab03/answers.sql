-- Exercise 1 (done for you):
SELECT *
FROM users;
-- Exercise 2 (done for you):
SELECT id,
    first_name,
    last_name
FROM users;
-- Exercise 3
SELECT id,
    first_name,
    last_name
FROM users
ORDER BY last_name;
-- Exercise 4
SELECT id,
    image_url,
    user_id
FROM posts
WHERE user_id = 26;
-- Exercise 5
SELECT id,
    image_url,
    user_id
FROM posts
WHERE user_id = 26
    OR user_id = 12;
-- Exercise 6
SELECT COUNT(*)
FROM posts;
-- Exercise 7
SELECT user_id,
    COUNT(*)
FROM comments
GROUP BY user_id
ORDER BY COUNT(*) DESC;
-- Exercise 8
SELECT P.id,
    P.image_url,
    P.user_id,
    U.first_name,
    U.last_name
FROM posts P
    INNER JOIN users U ON P.user_id = U.id
WHERE P.user_id = 26
    OR P.user_id = 12;
-- Exercise 9
SELECT P.id,
    P.pub_date,
    F.following_id
FROM posts P
    INNER JOIN following F ON P.user_id = F.following_id
WHERE F.user_id = 26;
-- Exercise 10
-- Exercise 11
INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES (26, 219, now());
INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES (26, 220, now());
INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES (26, 221, now());
-- Exercise 12
DELETE FROM bookmarks
WHERE user_id = 26
    AND (
        post_id = 219
        OR post_id = 220
        OR post_id = 221
    );
-- Exercise 13
UPDATE users
SET email = 'knick2022@gmail.com'
WHERE id = 26;
-- Exercise 14