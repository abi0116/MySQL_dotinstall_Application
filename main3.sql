DROP TABLE IF EXISTS posts;
CREATE TABLE posts　(
  id INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(140), 
  likes INT,
  area VARCHAR(20),
  PRIMARY KEY (id)
);

INSERT INTO posts (message, likes, area) VALUES
  ('post-1', 12, 'Tokyo'),
  ('post-2', 8, 'Fukuoka'),
  ('post-3', 11, 'Tokyo'),
  ('post-4', 3, 'Osaka'),
  ('post-5', 8, 'Tokyo'),
  ('post-6', 9, 'Osaka'),
  ('post-7', 4, 'Tokyo'),
  ('post-8', 10, 'Osaka'),
  ('post-9', 31, 'Fukuoka');

-- SELECT area, SUM(likes) FROM posts GROUP BY area;

-- SELECT
--   area,
--   SUM(likes)
-- FROM
--   posts
-- GROUP BY
--   area
-- WHERE ←これだとエラーになる
-- HAVING ←これがWHEREだとエラー(GROP BYより早く処理されるWHEREを、GROP BYの後ろに書いているから)
--   SUM(likes) > 30;

SELECT
  area,
  SUM(likes)
FROM
  posts --①postsのすべてのレコードから
WHERE
  likes > 10 --②likesが10以上の物だけを抽出
GROUP BY
  area; --③その後にグループ化 これならWHEREとGROUP BYが一緒に使える