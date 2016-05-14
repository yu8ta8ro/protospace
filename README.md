== README
# Name
protospace

## Description
You can post messages with your images. You can also write down some comments to messages posted by others.
What's more,you have your own account, which enable you to fomulate your messages posted.

### Association
+prototype has many images
+prototype has many comments
+prototypes belong to user

+images belong to prototype

+comments belong to prototype

+user has many prototypes

+likes belong to protorype
+likes belong to user

### Table
+prototypes
+images
+users
+comments
+likes

### Culumn
+prototypes
 -catch_copy
 -concept
 -title
 -user_id

+images
 -image
 -image_type
 -prototype_id

+users
 -name
 -email
 -password
 -member
 -profile
 -work
 -user_image

+comments
 -text
 -prototype_id

+likes
 -prototype_id
 -user_id

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

+name
 -string
+password
 -string
+member
 -string
+profile
 -text
+work
 -string
+user_image
 -text

+text
 -text
+prototype_id
 -integer

+prototype_id
 -integer
+user_id
 -integer



