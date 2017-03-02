create table tasks (id serial PRIMARY KEY, title varchar, description varchar);

create table comments (id serial PRIMARY KEY, task_id int REFERENCES tasks(id), comment varchar);

SELECT t.title, c.comment FROM tasks t JOIN comments c ON (t.id = c.task_id) WHERE t.id = 3;
