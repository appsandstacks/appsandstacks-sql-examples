-- Switch to the new database
USE task_manager_db;

-- Insert Users (Teachers)
INSERT INTO users (name, email, password_hash) VALUES
('Alice Johnson', 'alice@school.edu', 'hash_1'),
('Brian Smith', 'brian@school.edu', 'hash_2'),
('Claire Adams', 'claire@school.edu', 'hash_3'),
('David Brown', 'david@school.edu', 'hash_4'),
('Emma Wilson', 'emma@school.edu', 'hash_5');

-- Insert Projects
INSERT INTO projects (user_id, name, description) VALUES
-- Alice’s Projects
(1, 'Math Homework Tracker', 'Track and grade student homework'),
(1, 'Exam Review Tasks', 'Prepare and schedule review sessions'),
-- Brian’s Projects
(2, 'Science Fair Planning', 'Organize school science fair projects'),
(2, 'Lab Equipment Maintenance', 'Maintain and track lab equipment'),
-- Claire’s Project
(3, 'History Assignments', 'Weekly assignment management for history class'),
-- David’s Project
(4, 'Art Exhibition', 'Organize student artwork for the annual show'),
-- Emma’s Project
(5, 'Music Rehearsal Schedule', 'Coordinate band and choir practice sessions');

-- Insert Tasks
INSERT INTO tasks (project_id, title, description, status, priority, due_date) VALUES
-- Alice’s Projects
(1, 'Grade Algebra Homework', 'Review and grade student submissions', 'in_progress', 'high', '2025-11-10'),
(1, 'Prepare Geometry Quiz', 'Create a quiz for next week', 'pending', 'medium', '2025-11-12'),
(2, 'Prepare Exam Review Slides', 'Slides for final review class', 'pending', 'high', '2025-11-15'),
(2, 'Book Classroom for Review', 'Reserve large room for joint session', 'completed', 'low', '2025-11-05'),

-- Brian’s Projects
(3, 'Assign Student Topics', 'Assign topics for science fair projects', 'in_progress', 'high', '2025-11-11'),
(3, 'Review Progress Reports', 'Check progress of each team', 'pending', 'medium', '2025-11-14'),
(4, 'Inspect Microscopes', 'Ensure all lab microscopes work properly', 'completed', 'low', '2025-11-03'),
(4, 'Order New Chemicals', 'Replenish chemistry supplies', 'pending', 'medium', '2025-11-08'),

-- Claire’s Project
(5, 'Create History Timeline', 'Prepare visual timeline for WW2 unit', 'in_progress', 'medium', '2025-11-09'),
(5, 'Mark Assignments', 'Grade recent history essays', 'pending', 'high', '2025-11-10'),

-- David’s Project
(6, 'Arrange Art Pieces', 'Sort artworks for display', 'in_progress', 'medium', '2025-11-13'),
(6, 'Print Exhibition Labels', 'Label cards for each piece', 'pending', 'low', '2025-11-15'),

-- Emma’s Project
(7, 'Set Choir Practice Dates', 'Schedule choir rehearsal calendar', 'completed', 'medium', '2025-11-06'),
(7, 'Prepare Sheet Music', 'Print and distribute scores', 'in_progress', 'high', '2025-11-10');

-- Insert Comments
INSERT INTO comments (task_id, user_id, content) VALUES
(1, 1, 'Half of the class submitted already.'),
(2, 1, 'Need to finalize the geometry quiz questions.'),
(3, 1, 'Slides almost ready for review session.'),
(4, 1, 'Room booked successfully.'),
(5, 2, 'Most students have picked topics.'),
(6, 2, 'Progress report review scheduled for tomorrow.'),
(7, 2, 'All microscopes working fine now.'),
(8, 2, 'Chemical order placed.'),
(9, 3, 'Timeline draft looks great!'),
(10, 3, 'Essays were quite insightful this week.'),
(11, 4, 'Display layout approved by the principal.'),
(12, 4, 'Labels printing in progress.'),
(13, 5, 'Choir sessions synced with the music hall schedule.'),
(14, 5, 'Sheet music uploaded to Google Drive.');

-- Insert Attachments
INSERT INTO attachments (task_id, file_url) VALUES
(3, 'https://files.school.edu/slides/exam_review.pdf'),
(5, 'https://files.school.edu/topics/science_fair_topics.xlsx'),
(9, 'https://files.school.edu/history/ww2_timeline.jpg'),
(14, 'https://files.school.edu/music/sheet_music.pdf');
