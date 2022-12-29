# RubyJoy

<br />

<img alt="To-do List sample" src="https://drive.google.com/uc?export=view&id=1q5wEphJZWE-RxlnvyIer48thONmABGZc" />
<br />
<br />
<br />

## 專案介紹

RubyJoy 是一個結合活動頁面、個人募資、站內商城的平台

身為「送」禮者，是否常在好友生日、小孩周歲時不知道要送什麼？
身為「收」禮者，是否常收到自己不那麼喜歡的禮物？
每次都在猶豫「我送這個禮物、這個金額會不會不夠誠意？」

  在 RubyJoy 這個平台，你只需要：

  註冊帳號 → 建立活動 → 挑選禮物 → 分享活動連結給朋友，等待願望實現！

  輕鬆幫你解決活動頁面建立以及禮物清單的煩惱！


<br />

## 如何使用

- run `mpn start` or `yarn install`
- run `bundle`
- replace your own keys for AWS3 & payment system, refer to .env.example


<br />

## 主要功能

1. 一鍵複製活動連結
2. 加禮物功能
3. 訂單後台管理
4. 第三方金流
5. 寄信功能（禮品購買後活動創辦人及送禮人皆可收到信件通知）
6. 搜尋功能
7. 一鍵複製活動連結

<br />

## RubyJoy開發技術
**前端：**HTML5、 CSS3、 Tailwindcss、 JavaScript、 Stimulus.js <br />
**後端：**Ruby、 Ruby on Rails<br />
**資料庫：**PosgreSQL<br />
**圖片上傳：**AWS3<br />
**會員系統：**Devise<br />
**部署：**Heroku<br />
**版本控制：**Git、GitHub<br />
**協同工具：**Figma、DrawSQL<br />
**第三方金流：**藍新金流<br />
<br />

## 組員分工


### 吳家瑋
- PosgreSQL 資料庫
- 搜尋功能
- 串接 AWS3
- 商店、商品CRUD
- 藍新金流串接
- Race condition 處理
- Google 第三方登入


### 謝政庭
- 商店、商品CRUD
- 商店、商品前端RWD
- 路徑優化
- 商店訂單查詢功能
- ER圖、Flowchart
- 寄信功能


### 陳廷偉
- 前端視覺設計
- 前端資料驗證
- 活動 CRUD
- 前端RWD
- 一鍵複製活動頁面功能

### 陳僅恩
- 專案部署及自定義網址DNS轉向
- 會員系統
- 前端RWD切版＆UX 設計
- i18n 訊息中文化
- ER圖、Flowchart
- 會員活動加禮物功能（ 前後端API串接 ） 

