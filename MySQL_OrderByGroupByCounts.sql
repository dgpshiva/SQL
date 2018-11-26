/*
Hacker Rank question: https://www.hackerrank.com/challenges/full-score/problem
Enter your query here.
*/

SELECT Submissions.hacker_id, Hackers.name
FROM Submissions
INNER JOIN Challenges
ON Submissions.challenge_id = Challenges.challenge_id
INNER JOIN Difficulty
ON Challenges.difficulty_level = Difficulty.difficulty_level
INNER JOIN Hackers
ON Submissions.hacker_id = Hackers.hacker_id
WHERE Submissions.score = Difficulty.score
GROUP BY Submissions.hacker_id, Hackers.name HAVING count(*) > 1
ORDER BY count(*) DESC, Submissions.hacker_id
