#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Promotion.delete_all
Testimonial.delete_all
BookingCategory.delete_all
Booking.delete_all


User.create(first_name: "Douglas", last_name: "Teixeira", email: "teixeir3@gmail.com", password: "LOLpword6", position: 999, title: "Software Engineer", work_phone: "(908) 872-0937", home_phone: "", mobile_phone: "(908) 872-0937", fax: "", bio: "Douglas lives in NJ and is the web developer and webmaster of clark-travel.com.", is_admin: true)

User.create(first_name: "Test", last_name: "User", email: "test_gilwcdm_user@tfbnw.net", password: "clark-travel-test", position: 999, title: "Facebook Test User", work_phone: "(999) 999-9999", home_phone: "", mobile_phone: "(999) 999-9999", fax: "(999) 999-9999", bio: "Test user for facebook approval.", is_admin: true, display: false)

User.create(first_name: "Lucille", last_name: "Pucciarelli", email: "teixeir3@clark-travel.com", password: ENV["ADMIN_PASSWORD"], position: 1, title: "President", work_phone: "(908) 595-0400", home_phone: "", mobile_phone: "(908) 400-6224", fax: "(908) 595-0410", bio: "I’ve been in the travel business for 30+ years. I hold degrees in many areas, including CLIA Master Cruise Counsellor, Certified Sandals/Beaches Specialist, Destination Specialist Caribbean, Hawaii, Mexico, and College of Disney Knowledge, just to name a few. I’ve traveled extensively in Europe, and am fluent in several languages that allow me to connect directly with hotels and suppliers abroad. 

Your vacation time is precious and I can help you maximize the use of your time and budget, whether you’re planning a honeymoon, destination wedding, romantic getaway or time with your immediate or extended family and friends (groups).

After getting to know you a bit, we’ll determine what you’re looking for in a vacation and I’ll recommend a trip that is sure to please. I can customize your trip to your exact specifications by adding elements, such as activities, dining, etc. that will create a personalized itinerary, just for you! 
I’m waiting to hear from you…call me so we can create your dream trip together!", is_admin: true)

User.create(first_name: "James", last_name: "Plakey", email: "mrjtp@aol.com", password: "", position: 3, title: "Facebook Test User", work_phone: "(908) 595-0400", home_phone: "", mobile_phone: "", fax: "(908) 595-0410", bio: "Test user for facebook approval.", is_admin: true, display: false)


user = User.create(first_name: "Ulrike", last_name: "Ocasio", email: "ulrike@clark-travel.com", password: ENV["ADMIN_PASSWORD"], position: 2, title: "President", work_phone: "(908) 595-0400", home_phone: "", mobile_phone: "(908) 892-7001", fax: "(908) 595-0410", bio: "My name is Ulrike Ocasio and I tell everyone my first name is pronounced just like the vacuum cleaner. For many years I wanted to work in the travel industry. In April 2005 I had the chance to join Clark Travel after 27 years in the insurance industry. For years Lucy planned my trips – now I have the opportunity to arrange trips for other individuals.

My passion for travel has been a great tool in assisting my clients in planning their vacation whether it is a honeymoon, family vacation, or cruise. I have traveled/cruised many times with both family and friends and have created lasting memories and friendships. I would like to create those wonderful memories for you. 

Below is a list of sampling of some of my accomplishments that I am proud of:

Princess/Cunard Cruise Line Commodore, Celebrity Five star Agent, Sandals Certified, graduate of the Disney College of Knowledge, Globus family of brands Specialist, 
Marriott Hotels Sales Specialist, Amresorts Master Agent, Alaska Certified Expert, Hawaii Destination Specialist and many others. ", is_admin: true)

################### Seed 3 Inital Promotions ####################

user.promotions.create({title: "Website Disclaimer", highlight: "Agreement for Users and Travelers", body: "When you use this website, you agree to the following terms, and you agree to convey the contents of this Agreement to your traveling family members or companions:

1.  Responsibility: Clark Travel Agency Inc. (\"We\") act as an agent for the airlines, tour operators, cruise lines lodging providers, car-rental companies, ground operators, and any other suppliers of travel services shown on your itinerary .We are not responsible for the acts or omissions of such suppliers or their subcontractors or their failure to provide services, adhere to their own schedules, or honor their contracts.

2.  Hazards: We have no special knowledge regarding foreign entry requirements, unsafe conditions: health hazards, weather hazards, supplier bankruptcies, or the suitabi1ity for disabled persons of any portion of any tour. For foreign entry requirements, go to http://travel.state.gov/travel_warnings.html. For State Department travel advisories, go to http://travel.state.gov/travel_warnings.html. For foreign health requirements and dangers, go to http://www.cdc.gov/travel/index.htm. You hereby release us from any claims resulting in whole or in part from any problem covered in this paragraph and any other causes not within our control, and to submit all other claims against us within 30 days after the return of your trip.

3.  Limitation of Refunds: All airlines impose cancellation and change penalties up to 100% for many discount rickets. All tour operators, cruise lines, and some resort hotels impose cancellation and change penalties, too. Please view the applicable rules before you make your reservation.

4.  Delays: Flight delays are very common today. If your flight is delayed for any reason, the airlines are not required by law to pay for your en route expenses, such as meals, hotels, taxis and phone calls.

5.  Check Your Itinerary: As soon as you receive your booked itinerary, check it thoroughly to make sure it is correct as to dates, rimes, fares, and rates. 

6.  Reconfirmation: Schedule changes are quite common today. We urge you to re-check exact flight times prior to departure and prior to your return. 

7.  Package Trips: If you book a trip, we must collect the tour operator's or cruise line’s deposit when reservations are made. The amount of the deposit, the refund allowed, and the times for canceling vary according to the tour operator or cruise line. We do not endorse or recommend any particular tour operator or cruise line; our role is strictly limited to facilitating the booking. After you finish your booking, we will send you any agreement required by the travel services supplier, along with a request that you sign that agreement and return it to us. In the event of any inconsistency between that agreement and this agreement, the latter shall govern.

8.   Charter Trips: If your package trip involves a charter flight or if your vacation involves an air-on1y charter night, federal regulations require that you also sign the charter operator's participant agreement, which will be mailed to you. It is extremely important that you realize that, for charters:
 
a. Departure times (both going and returning) can change at the last minute. These delays legally can be as much as 48 hours (approximately two days late). 
b. Your flight may be advertised as non-stop; however, the operator may legally change the routing and make intermediate stops at the last minute.
c. The charter operator may 1egally-substitute types of aircraft and even airline at the last minute. Charter aircraft are generally not as comfortable as the scheduled aircraft.
d. The charter operator generally takes no responsibility for baggage it is not unusual to have luggage misplaced.
e. Charter trips have very stiff cancellation penalties. No one plans a trip with the idea of canceling; however, sometimes that becomes necessary and you must understand what to expect or not to expect in the way of refunds.
f. Usually, no frequent flier miles are accrued.
g. Advance seat assignments are frequently not available.

9.  Final Payment: For all vacation trips, you must have made full payment before we release the tickets or documents.

10.  Non-Use of Coupons: In the event that you purchase a ticket or tickets containing flight coupons that you may or may not use, we do not guarantee that the airline will honor the ticket or tickets, and you agree to indemnify us against airline claims for the difference between the full fare for your actual itinerary and the value of the ticket that you purchased. 

11. Foreign Currency: Currency rates quoted on this website are based on various publicly available sources. Rates are not verified as accurate, and actual rates may vary.

12. Information on Website: You agree not to use or authorize the use of this information for any purpose other than personal use, and not to engage or authorize anyone to engage in the resale, redistribution, and use of the information on this website for commercial purposes. Third-party links and pointers are included solely for your convenience, and do not constitute any endorsement by us and/or our suppliers. Any software that is on this website including HTML codes and software made available to download from this website (\"Software\") is our copyrighted work or the copyrighted work of our suppliers or 1icensors.  Clark Travel Agency are our trademarks. Other product and company names mentioned herein may be the trademarks of their respective owners.

13.  Power of Attorney: As our client, you hereby appoint the us to be your attorneys-in-fact for the purpose of signing all documents necessary to purchase and issue airline tickets, tours, cruises, and hotel guarantees for late aniva1. You authorize any of the attorneys-in-fact to sign credit card authorizations for said purchases whenever any of them receives an Internet booking request reasonably believed to be from you or someone acting on your behalf, requesting those tickets be charged to this credit card account. Your agree that you will pay for all such purchases and will not hold us responsible for any of our actions pursuant to this power of attorney. 

14.  Exclusive Jurisdiction: All suits in connection with, or incident to, this Agreement shall be litigated, if at all, in the courts of the Country of the United States,  State of  New Jersey, Somerset County, to the exclusion other courts of any other state.

15.  No warranties:  The content, code, access and other features of this site are provided “As Is” and without warranties of any kind either express or implied, including but not limited to, Warranties of accuracy, reliability, merchant ability, fitness for a particular purpose, and non-infringement.   We do not warrant that any such features will operate uninterrupted or in an error-free fashion,, that defects will be corrected, or that this site or the server are free of viruses of other harmful components.   Applicable law may not allow exclusion of implied warranties, so the above exclusion may not apply to you.

16.  No consequential damages:  in no event will we be liable for any direct, indirect, incidental or consequential damages, including without limitation lost profits and cost of procurement of substitute products, arising out of your use or inability to use any content or features, or your failure to access or click-thru access any content or features, even if we have been advised of the possibility of such damages.   Some states do not allow the exclusion or limitation of incidental or consequential damages, so the above limitation and exclusions may not apply to you.", start_date: DateTime.parse("10 Feb 2012"), expiration_date: DateTime.parse("31 Dec 2020")})

user.promotions.create({title: "The Value of a Travel Agent", highlight: "Have you asked yourself this question?", body: "With so many travel options out there, it can be overwhelming.  I work as your \"value interpreter\".  Using my expertise, I find amazing experiences that exceed your every desire, but not your budget.  With my services, you can be confident that your vacation will be perfectly planned, hassle-free, and filled with moments you'll never forget.", start_date: DateTime.parse("09 Sept 2011"), expiration_date: DateTime.parse("31 Dec 2050")})

user.promotions.create({title: "Designated Authorized Disney Vacation Planner", highlight: "Clark Travel has been designated by Disney Destinations as an \"Authorized Disney Vacation Planner\" based on its strong support in selling Disney Vacations.", body: "We have been designated by Disney Destinations as an \"Authorized Disney Vacation Planner\" based on our strong support in selling Disney Vacations.

Clark Travel has been in business in Branchburg, NJ for   35+ years and has gained specialized knowledge on vacations to the Disneyland® Resort, Walt Disney® World Resort, Disney Cruise Line®, and Adventures by Disney vacations.

Many travel counselors at Clark Travel have received extensive training on Disney Destinations theme parks, resorts, cruises, vacation packages and more, and can provide the utmost in professional assistance in planning customized Disney vacations.  In fact, one reason the agency attained the \"Authorized Disney Vacation Planner\" status is that at least 50 percent of the frontline leisure travel are College of Disney Knowledge graduates.  The College of Disney Knowledge is an in-depth comprehensive course that allows agents to develop their expertise regarding the Disney Destinations – knowledge that consumers can take advantage of when planning a Disney vacation.", start_date: DateTime.parse("08 Feb 2012"), expiration_date: DateTime.parse("31 Dec 2050")})

# user.testimonials.create(highlight: "", body: "", signature: "", display: true, position: 17)
user.testimonials.create({highlight: "Thank You", body: "Words cannot express how grateful we are for all your hard work during our wedding planning. Your professionalism dealing with our frequent questions always put us at ease in a stressful time. You made things simple & easy to understand for us and our guests. Our only wish was that you could have joined us at this beautiful resort. Thank you again for helping to create memories that will last a lifetime.", signature: "Nate and Trish", display: true, position: 0})

user.testimonials.create({highlight: "We had a wonderful time", body: "Our recent cruise aboard the Caribbean Princess was perfect in every way. The luxury of the ship, beauty of the beaches and scenery of the islands can only be described as breathtaking. Our gratitude for your service, recommendations and advice cannot be overstated. Your thoughtful gifts that awaited us in our stateroom were deeply appreciated. Thank you so much. We had a wonderful time and, it would be a safe bet to say that we will be cruising again.", signature: "Al & Karen Jurgensen
", display: true, position: 1})

user.testimonials.create(highlight: "First cruise", body: "I want to sincerely thank you very much for all your efforts which made my first cruise an enjoyable and memorable experience. You found me a great flight and selected an awesome room for me. Then you went beyond the call of duty when you cancelled and rebooked our cruise reservations at a cost savings. You treated me as a human being every step of the way - not just another number in your files. I'm glad Joanne found and chose you as our travel agent. Your professionalism in the field is outstanding.", signature: "Donald R. Shriadek", display: true, position: 2)
user.testimonials.create(highlight: "Namibia", body: "Thank you very much for all the great work you do for me in planning my vacations! I want to especially thank you for finding the Namibia tour that meet my needs. I never imagined I would actually be going to Namibia, but you have made my dream come true! You always go above and beyond in supporting my travel plans. You’re a gem!", signature: "Mary Ciufo-lind", display: true, position: 3)
user.testimonials.create(highlight: "Looking forward to our trip", body: "Thank you very much for the wing you gifted us on our cruise. It was a very nice gesture and ewe enjoyed having it with out dinners. Most of all we would like to express our appreciation for you service and professionalism. We are more than please how you handled the logistics of trips and have recommended you to family and friends. We are looking forward to having you take care of our next trip!", signature: "The Rivera Family", display: true, position: 4)
user.testimonials.create(highlight: "Paris", body: "Thank you so very much for making Our first trip to Paris' wonderful, beautiful, magnificent and memorable. It was one of our dreams come true!!", signature: "Patti & Mike Haller", display: true, position: 5)
user.testimonials.create(highlight: "Rivera Maya", body: "Just wanted to tell you how wonderful our trip was to Secret's Capri. Everything was exquisite from the moment we arrived until we sadly had to leave. The staff at Secret's Capri were spot on as well as friendly. I think between staff and other vacationers, our mom adopted six additional kids. Everyone called her mom. We were treated so nicely by everyone on staff who catered to our every need, joked and laughed with us. The food was delicious. We dined in every restaurant. The weather was spectacular my sister and I even parasailed that was awesome.", signature: "", display: true, position: 6)
user.testimonials.create(highlight: "Thanks again!!!", body: "Thank you again for making such wonderful travel arrangements for us. You never disappoint and we greatly appreciate all of you efforts in making sure we have a great vacation. This one was truly special as it was the first time all daughters and mom went away together and we have fabulous memories to carry with us.", signature: "Ursula Deeg-Dube", display: true, position: 7)
user.testimonials.create(highlight: "Louisiana was great!", body: "Thanks so much for helping us with our trip to Louisiana! You don't know how much we appreciate it. The trip was a lot of fun and we wouldn't have been able to make it without your help. We know you must've pulled some strings or called in a favor. Keep working your magic! We can't continue going on so many vacations without your help!!", signature: "Laura Juliano & Doug Teixeira", display: true, position: 8)
user.testimonials.create(highlight: "Family trip", body: "Thank you so much for a wonderful trip for my family and myself. I will think of your for our next trip.", signature: "Elizabeth Veit", display: true, position: 9)
user.testimonials.create(highlight: "Alaska", body: "We want to tell you what a wonderful time we both had on our trip to Alaska! WOW! Thank you for all you did to make this our most memorable vacation yet. We also want to thank you for the Alaska Cruise Companion book and map. We enjoyed reading it on the cruise and following our trip on the map. And thank you for the gift of a bottle of wine! We had a nice dinner at Sterling Steakhouse on Jeff’s birthday and enjoyed the wine. We are looking forward to our next cruise in October. It will be so nice to see you again.", signature: "", display: true, position: 10)
user.testimonials.create(highlight: "Hooked", body: "Ann and I are very grateful for the work you do every time we shoot you an email. The kinds of customer service you routinely provide seems like a dying art. If you haven’t figured it out already, you have me hooked as a lifetime client.", signature: "David", display: true, position: 11)
user.testimonials.create(highlight: "Wonderful Trip", body: "I want to thank you for all your work and attention to details in making our trip so wonderful. It was quite an adventure and we all had such a great time. Thanks for everything and we will use your services again in the future.", signature: "Gail", display: true, position: 12)
user.testimonials.create(highlight: "Sandals", body: "I just wanted to let you know what an incredible time Brandon and I had at Sandals in Nassau!! You were rightit was amazing! We loved every minute and we’re afraid we’re spoiled now…we don’t want to be let down by future vacations after staying at such a great place! Good food, friendly staff, great beach, LOVED the private island! Thanks again for all of your help with the trip! Greg mentioned you requested the room upgrade for us thank you so much! Our villa suite was so great – we loved staying in the garden area with a nice semi-private pool right outside our door! I just gave a friend, Kimberly, you contact information. She’s getting married and doesn’t where she wants to go on a honeymoon. I told her you could make the recommendations based on what she and her fiancée are looking for. Thanks again.", signature: "Megan", display: true, position: 13)
user.testimonials.create(highlight: "Disney Cruise", body: "We returned this past Saturday from our Disney Cruise. Everything went exceptionally well. Thank you for all your patience and assistance. As well as for the lovely treats you surprised us with in our rooms. They were very well received. We will happily refer our friends and family to your agency!", signature: "Bonnie & Paul", display: true, position: 14)
user.testimonials.create(highlight: "Beauty of Alaska", body: "Thank you so very much for your thoughtfulness as I prepared for my trip to Alaska. The experience was amazing: words cannot express the beauty, awesome and grandeur of this part of our country. Please know that your gift was used to make this time enjoyable for me and my family. I will always be gratefully for you thoughtfulness.", signature: "Fr. Len", display: true, position: 15)
user.testimonials.create(highlight: "Trip to Prague", body: "Just wanted to thank you for putting together such a wonderful trip. Privatair was everything you promised and more - in fact, our return flight arrived in Newark an hour early. And John and I fell in love with Prague and its genteel old world charm. The weather was spectacular; hotel lovely, people gracious. We walked the entire time, never took a taxi or tram and chose the day trip rather than the chateau tour. In fact, the movie the Illusionist, which we watched on the flight home, was filmed there. Our time in Prague will be forever etched in our memory and we will continue to (and have been) singing its praises since our return.", signature: "Janet L.", display: true, position: 16)

################## Seed 2 Inital Booking Categories ###################

bc1 = user.booking_categories.create(title: "Cruising", position: 0)
bc2 = user.booking_categories.create(title: "Travel Packages", position: 1)

################## Seed 9 Inital Booking Links ####################

bc1.bookings.create(title: "Caribbean Cruises", url: "http://clarktravel.caribbean.yourtrip.co/", position: 0, display: true, carousel_display: true)

bc1.bookings.create(title: "European Cruises", url: "http://clarktravel.europe.yourtrip.co/", position: 1, display: true, carousel_display: true)

bc1.bookings.create(title: "Worldwide Tours and River Cruises", url: "http://www.globustravelagent.com/Default.aspx?id=42045", position: 2, display: true, carousel_display: false)

bc2.bookings.create(title: "Alaska", url: "http://clarktravel.alaska.yourtrip.co/", position: 0, display: true, carousel_display: true)

bc2.bookings.create(title: "Caribbean and Mexico", url: "http://www.applevacations.com/?agentId=31731744", position: 1, display: true, carousel_display: false)

bc2.bookings.create(title: "Europe", url: "http://clarktravel.europevacations.yourtrip.co/", position: 2, display: true, carousel_display: true)

bc2.bookings.create(title: "Exotic Destinations", url: "http://clarktravel.exotic.yourtrip.co/", position: 3, display: true, carousel_display: true)

bc2.bookings.create(title: "Independent Packages to Caribbean, Mexico, USA, and Central/South America", url: "http://crusader.travimp.com/TIDirect/TIDirectFrontServlet?request_type=search&TIConnectId=31731744", position: 4, display: true, carousel_display: false)

bc2.bookings.create(title: "Luxury Vacations", url: "http://clarktravel.luxury.yourtrip.co/", position: 5, display: true, carousel_display: true)