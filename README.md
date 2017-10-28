#SurpriseThanks
##感謝を投稿するアプリ
Railsの練習教材用アプリ
写真とエピソードを投稿する

##モデル
###SuprpriseThankモデル
- has_many :comments
- belongs_to :user
- belongs_to :group

- title: string, null: false
- image: string
- episode: text, null: false

###Commentモデル
- belongs_to :surprise_thank
- belongs_to :user

- text: text, null: false

###Userモデル
- has_many :surprise_thanks
- has_many :comments
- has_many :group, through: users_groups

- name: string, null: false
- handle_name: string, null: false
- devises_columns

###Groupモデル
- has_many :users, through :users_groups
- name: strig, null: false

###UsersGroupsモデル
- belongs_to :user
- belongs_to :group



