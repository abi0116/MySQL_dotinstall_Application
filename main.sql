DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT NOT NULL AUTO_INCREMENT,
  message VARCHAR(140),
  likes INT,
  PRIMARY KEY (id)
);

INSERT INTO posts (message, likes) VALUES
  ('post-1', 12),
  ('post-2', 8),
  ('post-3', 11),
  ('post-4', 3),
  ('post-5', NULL),
  ('post-6', 9),
  ('post-7', 4),
  ('post-8', NULL),
  ('post-9', 31);

-- SELECT COUNT(likes) FROM posts; 出力 7
-- SELECT COUNT(id) FROM posts; 出力9
-- SELECT COUNT(*) FROM posts; 出力9

SELECT SUM(likes) FROM posts; --likesの合計   出力 78
SELECT AVG(likes) FROM posts; --likesの平均   出力 11.1429
SELECT MAX(likes) FROM posts; --likesの最大値 出力 31
SELECT MIN(likes) FROM posts; --likesの最小値 出力 3