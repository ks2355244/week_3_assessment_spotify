# Assessment

This is an open-book **checkpoint** assessment focusing on building a
simple SPOTIFY ruby app using ActiveRecord with SQL database.


# Purpose
The test is to ensure that you are familiar with the basics of ActiveRecord,
and how it works with database (sqlite3 in this case) using Ruby.


# Assessment Time
Maximum **5 hours**




# To start:
1) Fork this repo out by clicking the "Fork" button on the top on the GitHub page.

```
$ cd ~/Desktop
```

2) Git clone your own forked repo

```
$ git clone <your repo address>
```

3) Enter the repo.
```
$ cd <repo-name>
```

4) Begin your test

> Note:
>
> Remember to commit small and often. Some good references:
>
> ```$ git add .```
>
> ```$ git commit -m "Add song is done"```
>
> ```$ git push origin master```
>
> Ask mentor if you are stuck with git issue.

5) You should write your main functions inside "**playlist.rb**" file.

6) Once done, perform your last "git push origin master" to your repo.

7) Slack mentor your GitHub repo link.

8) Mentor will assess your performance.






# App Requirements:


## 1) User is able to list all the songs:

Example:
```
$ ruby playlist.rb --list

id    Title           Artist            Duration
====  ====            =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendes      3:59

```



## 2) User is able to add new song into the playlist

```ruby playlist.rb --add <Title> <Artist> <Duration>```

Example:

```
$ ruby playlist.rb --add Maroon5 Sugar 7:00

$ ruby playlist.rb --list

id    Title           Artist            Duration
====  ====            =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendes      3:59
3.    Sugar           Maroon5           7:00
```



## 3) User is able to update the song details
```
ruby playlist.rb --update <id> <Title> <Artist> <Duration>
```


This will update the song details with the mentioned song ID. If the song
is not found, a friendly error should be raised.

Example:

```
$ ruby playlist.rb --list

id    Title           Artist            Duration
====  ====            =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendes      3:59
3.    Sugar           Maroon5           7:00

$ ruby playlist.rb --update 3 Maroon5 Sugar 5:01

$ ruby playlist.rb --list

id    Title           Artist            Duration
====  ====            =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendes      3:59
3.    Sugar           Maroon5           5:01

$ ruby playlist.rb --update 4

Song with ID 4 is not found. Are you sure that this is the right ID?

```




## 4) User is able to remove any song from playlist
```
ruby playlist.rb --remove <id>
```


This will delete the song with the ID from the list. Should the song is
not found, a friendly error should be raised.

Example:

```
$ ruby playlist.rb --list

id    Title           Artist            Duration
====  ====            =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Stitches        Shawn Mendes      3:59
3.    Sugar           Maroon5           5:01

$ ruby playlist.rb --remove 2

$ ruby playlist.rb --list

id    Title           Artist            Duration
====  ====            =====             =====
1.    Love Yourself   Justin Bieber     3:51
2.    Sugar           Maroon5           5:01

$ ruby playlist.rb --remove 3

Song with ID 3 is not found. Are you sure that this is the right ID?

```

>**IMPORTANT NOTE**:
>
> Take note of the song id. Upon deletion, it should be self-updated
> in an ascending order.




At the end of this assessment, you should be able to:


1) Understand how ARGV works

2) Apply ActiveRecord and Sqlite3 into ruby application

** WITHOUT using SQL statement (refer Rakefile)

    2.1) Able to create SQL database

    2.2) Able to perform schema migration

    2.3) Able to explore sqlite3 database

    2.4) Able to CREATE, READ, UPDATE, DELETE (CRUD) data into SQL database

3) Able to rename files correctly (capitalization, camel case etc)



# Good Luck!!!
