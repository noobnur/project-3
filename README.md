
# WDI PROJECT 3 (Hidayah & Chong Qiang & Hui Shi)

## Link to live website
 https://learntocodewithus.herokuapp.com/

## About Codech
<h2>About Us</h2>
<p>Struggling as a programming student?<br> <p>You are not alone - Codech with me can help you in your journey of mastering different programming languages.</p>
<p>We have a pool of experienced tutors who love programming and have a passion to coach. You are now one step closer to being the programmer you have always dreamt to be!</p>
<p>Register (if you have not yet done so), select a tutor according to your programming language and book a lesson. </p>

  <p><i>Leadership and learning are indispensable to each other.</i>John F. Kennedy</p>
  
  ## User Stories
   1. Users can search for tutors and their timings based on the languages available (based on what the teachers have offered)
    2. Users can sign up as a tutor nd post their available lesson time  - which is really tuition time
    3. Tutors can set, edit and delete lessons that they make - but once it is booked neither student nor tutor can delete it.
    4. Users can book lessons from tutors and make payment
    5. Email will be sent to both tutor and student to confirm the booking
    6. Users, both students and tutors, can view their bookings through the bookings page
    7. Both can also track which bookings are upcoming and which are completed. We based the completion status on the date time - if it has passed, it is considered done.

## ERD

![](/app/assets/images/Codech_ERD.png)

## Wireframes
These wireframes are subject to changes.
![](/app/assets/images/wireframe1.png)
![](/app/assets/images/wireframe2.png)
![](/app/assets/images/wireframe3.png)
![](/app/assets/images/wireframe4.png)
![](/app/assets/images/wireframe5.png)

## Future Development
1. Feature: For tutors to able to delete their account when the have no active bookings. Currently they are not able if they have any bookings at all.
2. Users can rate and give Testimonials to Tutors
3. Users will receive reminder emails for the lessons booked.

## To work on this.

1. Fork and clone this repo
2. ```bundle install```
3. Set up Stripe API (sign up and input the keys to you .env file)
4. Add your email account username and password in .env file
5. ```rails db:create```
6. ```rails db:migrate```
7. ```rails s```
