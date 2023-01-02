# RubyJoy - 收禮的人開心，送禮的人省心

<br />

<img alt="RubyJoy home page" src="https://drive.google.com/uc?export=view&id=1WopDIj4R0LFjFWMZFbG8jE8fxYLHpyMx" />
<br />
<br />

## 專案介紹 - Overview

>本專案以 Ruby 版本 3.1.2；Rails 6.1.7 進行開發


<br /> 

RubyJoy 是一個結合活動頁面、個人募資、站內商城的平台

身為「送」禮者，是否常在好友生日、小孩周歲時不知道要送什麼？<br />
身為「收」禮者，是否常收到自己不那麼喜歡的禮物？<br />
每次都在猶豫「我送這個禮物、這個金額會不會不夠誠意？」<br />

  在 RubyJoy 這個平台，你只需要：

  註冊帳號 → 建立活動 → 挑選禮物 → 分享活動連結給朋友，等待願望實現！

  輕鬆幫你解決活動頁面建立以及禮物清單的煩惱！
  
  <br />
  
  >We used Ruby version 3.1.2；Rails version 6.1.7 for the development

<br /> 

<strong>RubyJoy is a website that combines event pages, personal fundraising, and an online store.<br />
Imagine this:</strong> 

<strong>As gift givers</strong>, do we often wonder about what to give on birthdays and baby showers?<br />
<strong>As recipients</strong>, do we often receive gifts that we don't really like?

Now you have RubyJoy to solve this problem, you just need to: 
Register an account → Create an event → Pick a gift → Share the link to the event page with your friends and family and let them pay for it! 

Easily help you out with the troubles of creating an event page and gift listing!

<br />


## 核心功能介紹 - Core functions
<br />

### 1. 第三方金流 - Third-party payment
> 透過第三方金流，使用者的付款資訊不會留存在平台，同一透過安全的第三方處理快速的付款流程<br />
>The payment process is safely dealt with the third-party payment platform, so that user's payment information will not be stored in RubyJoy's database.

<img alt="RubyJoy home page" src="https://drive.google.com/uc?export=view&id=1dMPsU2rFmYmwTbLVzufW0lDJWwEp_xGj" />
<br />

<br />

### 2. 店家訂單管理介面 - Order management interface for vendor role
> 註冊店家角色的使用者，可以透過訂單管理頁面輕鬆查閱訂單狀態、訂單編號及收件人相關資訊，輕鬆出貨！
<br />For vendor role in RubyJoy, You'll have a interface that you can easily manage the orders and check the status of the orders.
<br />

<img alt="RubyJoy home page" src="https://drive.google.com/uc?export=view&id=1Pd9QRUvgB---DapsWUQ9dTUnDV-RlysK" />
<br />
<br />
<br />


<br />

### 3. 加禮物功能 - Add the products you like to the wishlist 
> 使用者可以輕鬆透過加禮物按鈕將喜歡的禮物加入自己活動的許願清單
<br/>
Users can easily add the products they like to the wishlist of the event page
<br />

<img alt="RubyJoy home page" src="https://drive.google.com/uc?export=view&id=1DoQUIoJM8aQXrcZzLk2-2_rbprR8xWXY" />
<br />
<br />
<br />

### 4. 寄信功能 - E-mail notification after the purchase 
> 在送禮人結帳過後，會收到一封成功結帳的通知信，活動創辦人也會收到一封禮物被他人購買的通知信<br />
After the purchase of the gift is done, gift givers will receive an e-mail informing them that the purchase and order are placed successfully. So do the recipients, they'll get e-mail information that tells them which gift on his/her wishlist is purchased.

<br />
<strong>（ 活動主辦人收到的信件 - The e-mail that recipients will receive）</strong>
<br />
<img alt="RubyJoy home page" src="https://drive.google.com/uc?export=view&id=1H8anwcvZuMvLNnykqQvBur86EVHYBgWP" />
<br />
<br />
<br />

<strong>（ 送禮人收到的信件 - The e-mail that gift givers will receive）</strong>
<br />
<img alt="RubyJoy home page" src="https://drive.google.com/uc?export=view&id=1OyhZRMTo9sWdhj9fceZhswTPTV1aZ57c" />

<br />
<br />

### 5. 一鍵複製、快速分享 - Easy copy, easy share
> 活動創辦人可以輕鬆點擊活動頁面上的一鍵複製活動連結按鈕，輕鬆複製活動頁面連結並透過社群媒體的群發功能分享活動頁面給他的朋友<br />
Event holders can copy the link of their event page and share it through the social media apps.

<br />


<img alt="RubyJoy home page" src="https://drive.google.com/uc?export=view&id=1CK0wfSlfn4cKG3170UAJCCz4a9u3BuCz" />

<br />
<br />
<br />

### 6. 模糊搜尋功能 - Easy search
> 隨著店家的逐漸增加，活動創辦人可以透過模糊搜尋功能，透過店名的關鍵字更快速的找到心儀的商店 <br />
Event holders can find the stores they prefer more easily via the search bar

<img alt="RubyJoy home page" src="https://drive.google.com/uc?export=view&id=1Zy8xtTtOobm-IloZ0MPA24vSnxRR1N2j" />

<br />
<br />
<br />


## 如何使用該專案 - Get started

<strong>步驟 1：安裝專案 - Clone the project</strong><br />

<strong>執行  </strong>`$ bundle install` ；<strong>Run  </strong>`$ bundle install` <br />
<strong>執行  </strong>`$ yarn/npm install` ；<strong>Run  </strong>`$ yarn/npm intall` <br />

<br /><strong>步驟 2：建立資料庫 - Build the database</strong>
<br />

<strong>執行  </strong>`$ rails db:create` ；<strong>Run  </strong>`$ rails db:create`  <br />
<strong>執行  </strong>`$ rails db:migrate` ；<strong>Run  </strong>`$ rails db:migrate`  <br />


<br />
<strong>步驟 3：加入所需環境變數 - Fill up the ENV variables refer to the .env.example </strong>
<br />
<br />
<strong>Ps. 所需環境變數 - The env variables you'll need： </strong>
<br />
第三方金流(Third-party payment)、AWS S3、Google 第三方登入(Google third-party login)、Mailgun
<br />
<br />
<strong>步驟 4：啟動伺服器 - Start the server ( localhost:3000 )</strong> <br />

 <br />
 
<strong>執行  </strong>`$ foreman s` ；<strong>Run  </strong>`$ foreman s`  <br />


<br />

## RubyJoy 開發技術 - Develop & Tools, Dependencies
<strong>前端 - Frontend：</strong>HTML5、 CSS3、 Tailwindcss、 JavaScript、 Stimulus.js <br />
<strong>後端 - Backend：</strong>Ruby、 Ruby on Rails<br />
<strong>資料庫 - Database：</strong>PosgreSQL<br />
<strong>圖片上傳 - Image upload and storage：</strong>AWS S3<br />
<strong>部署 - Deployment：</strong>Heroku、GoDaddy、CloudFlare<br />
<strong>寄信功能- e-mail notification：</strong>Mailgun<br />
<strong>版本控制 - Version control：</strong>Git、GitHub<br />
<strong>協同工具 - Collaboration tool：</strong>Figma（ Flowchart）、DrawSQL ( Entity–relationship diagram)<br />
<strong>第三方金流 - Third-party payment：</strong>藍新金流（ NewebPay）<br />
<br />

## 組員分工 - Members


### 吳家瑋
- PosgreSQL 資料庫 - replace SQLite 3 to PosgreSQL
- 搜尋功能 - Searching function
- 串接 AWS S3 - Concatenates AWS S3
- 商店、商品 CRUD - Store, Product CRUD
- 藍新金流串接 - Concatenates NewebPay
- Race condition 處理 - Solved race condition
- Google 第三方登入 - Third-party login ( Google ) 
<br />

<strong>GitHub:  [Click me!](https://github.com/wucheiwei)</strong> <br />
<strong>Email:  twd1000015706@gmail.com</strong>
<br />
<br />


### 謝政庭 - Dino
- 商店、商品 CRUD - Store, Product CRUD
- 商店、商品前端 RWD - Store, Product RWD
- 路徑優化 - Routes optimization
- 商店訂單查詢功能 - Order management function & interface ( UI )
- ER圖、Flowchart - Entity–relationship diagram & Flowchart
- 寄信功能 - Mailing function
<br />

<strong>GitHub:  [Click me!](https://github.com/Danny3766)</strong> <br />
<strong>Email: GibbsHsieh2015@gmail.com</strong>
<br />
<br />


### 陳廷偉
- 前端視覺設計 - UI design
- 前端資料驗證 - Fronted validation
- 活動 CRUD - Event CRUD
- 前端 RWD - Frontend RWD
- 一鍵複製活動頁面功能 - Copy function
- SEO 優化、無障礙優化 - SEO optimization, Web accessibility optimization
<br />

<strong>GitHub:  [Click me!](https://github.com/wayne035)</strong> <br />
<strong>Email: QWE24367705@gmail.com</strong>
<br />
<br />

### 陳僅恩 - Elijah
- 專案部署及自定義網址DNS轉向 - Project deployment, customized domain name ,DNS settings 
- 會員系統 - Member function ( enum, Vendor & User)
- 前端 RWD 切版＆UX 設計 - Frontend RWD & UX design
- i18n 訊息中文化 - i18n ( from En to zh-tw)
- ER圖、Flowchart - Entity–relationship diagram & Flowchart
- 會員活動加禮物功能（ 前後端API串接 ） - Add gift function ( Frontend & Backend API fetching)
<br />

<strong>GitHub:  [Click me!](https://github.com/ElijahBecerra-Chen)</strong> <br />
<strong>Email: elijahbecerrakc@gmail.com</strong>
<br />
<br />

