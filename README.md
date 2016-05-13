== README
# Name
protospace

##Description
You can post messages with your images. You can also write down some comments to messages posted by others.
What's more,you have your own account, which enable you to fomulate your messages posted.

### Association
+prototype has many images
+prototype has many comments
+prototypes belong to user

+images belong to prototype

+comments belong to prototype

+user has many prototypes

### Table
+prototypes
+images
+users
+comments

### Culumn
+prototypes
 -catch_copy
 -concept
 -title
 -user_id

+images
 -main_image
 -sub_image
 -prototype_id

+users
 -username
 -email
 -password
 -member
 -profile
 -work

+comments
 -text
 -prototype_id

### Column type
+catch_copy
 -text
+concept
 -text
+title
 -text
+user_id
 -integer

+image_url
 -text
+prototype_id
 -integer

+username
 -string
+password
 -string
+member
 -string
+profile
 -text
+work
 -string


+text
 -text
+prototype_id
 -integer



