#!/bin/sh

git filter-branch --env-filter '

an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"

if [ "$GIT_COMMITTER_EMAIL" = "jannchie@gmail.com" ]
then
    cn="biliob233"
    cm="biliob233@outlook.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "jannchie@gmail.com" ]
then
    an="biliob233"
    am="biliob233@outlook.com"
fi

export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'