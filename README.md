# Name
protospace

## Description
You can post messages with your images. You can also write down some comments to messages posted by others.
What's more,you have your own account, which enable you to fomulate your messages posted.

### Table
+ prototypes
+ images
+ users
+ comments
+ likes

### Association
+ prototype:
 - has many images
 - has many comments
 - belongs to user

+ image:
 - belongs to prototype

+ comment:
 - belongs to prototype

+ user:
 - has many prototypes

+ likes:
 - belongs to protorype
 - belongs to user

### Culumns
#### prototype
|id     |catch_copy|concept|title|user_id|
|-------|----------|-------|-----|-------|
|integer|text      |text   |text |integer|

#### prototype_image
|id     |content|content_type|prototype_id|
|-------|-------|------------|------------|
|integer|text   |integer     |integer     |

#### user
|id     |name  |email|password|member|profile|work  |avatar|
|-------|------|-----|--------|------|-------|------|------|
|integer|string|text |text    |text  |text   |string|text  |

#### comment
|id     |comment_text|prototype_id|
|-------|------------|------------|
|integer|text        |integer     |

#### like
|id     |prototype_id|user_id|
|-------|------------|-------|
|integer|integer     |integer|
