# README

## Project 1-HandsUP

In HandsUp, you can sign up your account and post what you want others to help. Every one can use comments to talk to each other. If someone solve your problem, you can easily turn the status of your post from "Seek help" to "Done", in this case, the comments function will also closed.
</br>
You can also use google map to see the location of the task to help you make decisions. In addition, using search and filter function can help you find the tasks easily
</br>

Don't worry if you see `this page can't load google map properly`! It is because I didn't attach my billing details to the account that I created for a free google API key!
</br>

Use this [link](https://handsup-2022.herokuapp.com/) to start your HandsUp journey!

```
User email: mandy@ga.co
Password: 123123
```

## Tech stack

What I used for this website:

1. **Ruby**
2. **Ruby on Rail**
3. **Html**
4. **Css**
5. **Javascript**
6. **GOOGLE map API**
7. **Cloudinary** (for users uploading images)
8. **Heroku** (cloud platform )
9. **PostgresSQL**

## Screen Shot

**CUTE ANIMATION** </br>
![screen shots](app/assets/images/screen_2.gif)

---

**GOOGLE MAP API EMBEDDED** </br>
![screen shots](app/assets/images/screen_5.gif)

---

**CHANGE STATUS OF YOUR POST TO CLOSE COMMENTS** </br>
![screen shots](app/assets/images/screen_1.gif)

---

**SEARCH YOUR FAVARITE TASKS** </br>
![screen shots](app/assets/images/screen_3.gif)

---

## More to improve

1. Will add a assign button in Next version
2. Will see how many people want to solve your problem in Next version
3. ~~You need a shift refresh to see the map in post page.~~
   </br>
   ***
   Solving this problem by replacing `let` in javascript by `var`
   </br>
   Existing javascript
   ```javascript
   let latNum = parseFloat(document.getElementById("latitude").innerText);
   let lngNum = parseFloat(document.getElementById("longitude").innerText);
   ```
   New javascript
   ```javascript
   var latNum = parseFloat(document.getElementById("latitude").innerText);
   var lngNum = parseFloat(document.getElementById("longitude").innerText);
   ```
   ***
