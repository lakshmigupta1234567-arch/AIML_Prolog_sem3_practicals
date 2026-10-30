%Develop a timetable database and answer queries regarding faculty, subjects and classrooms.

% timetable(Faculty, Subject, Classroom, Day).

timetable(ram, ai, room101, monday).
timetable(shyam, python, room102, tuesday).
timetable(mohan, java, room103, wednesday).
timetable(rita, dbms, room104, thursday).
timetable(amit, ml, room105, friday).

% Find subject of faculty
faculty_subject(F, S) :-
    timetable(F, S, _, _).

% Find classroom
faculty_room(F, R) :-
    timetable(F, _, R, _).

% Find faculty teaching a subject
subject_faculty(S, F) :-
    timetable(F, S, _, _).

% Find classes on a day
day_classes(D, F, S) :-
    timetable(F, S, _, D).
