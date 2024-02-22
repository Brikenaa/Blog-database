--1.
SELECT * FROM users
WHERE email LIKE '%gmail.com';
--2
SELECT name, COUNT(name) FROM media
GROUP BY name;
--3
SELECT * FROM comments
WHERE post_id BETWEEN 1 AND 5;
--4
SELECT count(*) FROM media
WHERE type = 'video';
--5
SELECT * FROM posts
INNER JOIN posts_categories ON posts.id = posts_categories.posts_id
INNER JOIN categories ON posts_categories.categories_id = categories.id
WHERE categories.name = 'Healthy food';
--6
SELECT posts.* FROM posts
INNER JOIN users ON posts.user_id = users.id
WHERE users.name = 'admin1';
--7
SELECT posts.title FROM posts
INNER JOIN media ON posts.id = media.post_id
WHERE media.type = 'photo';
--8
SELECT * FROM posts
INNER JOIN users ON posts.user_id=users.id
WHERE email LIKE 'a%';
--9
SELECT * FROM comments
INNER JOIN posts ON comments.post_id=posts.id
WHERE content IN ('idea for lunch', 'idea for breakfast');
--10
SELECT * FROM users
INNER JOIN user_role ON users.id = user_role.user_id
INNER JOIN roles ON user_role.role_id = roles.id
WHERE roles.name = 'Lexues';
--11
SELECT posts.* FROM posts
INNER JOIN posts_tags ON posts.id = posts_tags.post_id
INNER JOIN tags ON posts_tags.tag_id = tags.id
WHERE tags.name LIKE '#fruit' OR tags.name LIKE '#teanatural';
























                                                      












