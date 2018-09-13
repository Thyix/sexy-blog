# Database structure

## Post
| Column  | Type | Key |
| ------------- | ------------- | ------------- |
| id_post  | NUMBER(5)  | PK |
| id_author  | NUMBER(5)  | FK |
| date_post  | DATETIME  |
| title_post | VARCHAR2(30) |
| content_post | BLOB |

## RelPostTag
| Column  | Type | Key |
| ------------- | ------------- | ------------- |
| id_post  | NUMBER(5)  | PK-FK |
| id_tag  | NUMBER(5)  | PK-FK |

## Tag
| Column  | Type | Key |
| ------------- | ------------- | ------------- |
| id_tag  | NUMBER(5)  | PK |
| name_tag | VARCHAR2(30) |

## User
| Column  | Type | Key |
| ------------- | ------------- | ------------- |
| id_user | NUMBER(5) | PK |
| username_user | VARCHAR2(30) |
| password_user | VARCHAR2(30) |
| email_user | VARCHAR2(60) |
<!--- | salt_user | --->



### Questions
- [x] A post can have more than one tag?
