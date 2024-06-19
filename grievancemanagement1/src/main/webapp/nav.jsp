/* Reset */
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Body */
body {
  font-family: sans-serif;
  font-size: 1rem;
  line-height: 1.5;
  overflow: hidden;
}

/* Header */
header {
  width: 100%;
  background-color: rgba(0, 0, 0, 1);
  padding: 0.5em 1.5em;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
}

/* Nav */
nav ul {
  font-family: "Varela Round", sans-serif;
  font-size: 0.9em;
  text-transform: uppercase;
  list-style-type: none;
}

ul.navigation-menu {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

ul.navigation-menu li {
  display: inline-block;
  margin: 0 0.65em;
  padding: 0.35em 0.25em;
  position: relative;
}

ul.navigation-menu a:link,
ul.navigation-menu a:visited {
  color: #fff;
  font-weight: medium;
  text-decoration: none;
  padding: 0.8em;
}

ul.navigation-menu a:hover,
ul.navigation-menu a:active,
ul.navigation-menu .active > a {
  color: #db70a6;
}

ul.navigation-menu ul {
  position: absolute;
  top: 100%;
  left: 0;
  display: none;
  text-align: left;
  font-size: 0.95em;
  margin: 0.25em 0;
}

ul.navigation-menu ul li {
  display: block;
  width: 100%;
  text-align: left;
  white-space: nowrap;
}

ul.navigation-menu li:hover > ul {
  background-color: rgba(0, 0, 0, 0.9);
  border-top: 2px solid #db70a6;
  display: block;
}

ul.navigation-menu ul ul,
ul.navigation-menu ul ul ul {
  left: 100%;
  top: 0;
}

/* Sub-menu styles */

ul.navigation-menu ul {
  background-color: #fff;
}

ul.navigation-menu ul li {
  padding: 0.5em 1em;
}

ul.navigation-menu ul a {
  color: #000;
}

ul.navigation-menu ul a:hover {
  color: #db70a6;
}

/* Active menu item styles */

ul.navigation-menu .active {
  background-color: transparent;
}

ul.navigation-menu .active {
  color: #db70a6;
}

/* Safari fix */

@media screen and (-webkit-min-device-pixel-ratio: 0) {
  .navigation-menu .active:hover > ul {
    background-color: rgba(0, 0, 0, 0.9);
    border-top: 2px solid #db70a6;
    display: block;
  }
}

/* background */
div {
  height: 100vh;
  background-size: cover;
  background-position: center;
  overflow: hidden;
}
#home {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://thumbs.dreamstime.com/b/employee-customer-grievance-procedure-business-concept-male-hand-holding-blue-paper-word-grievances-281547557.jpg");
}
#products {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1459541708374-6fe9eea39a29?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#dogsupplies {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1503256207526-0d5d80fa2f47?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1586&q=80");
}
#dogfoodtreats {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1592468257342-8375cb556a69?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80");
}
#dogtoys {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1549297161-14f79605a74c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1586&q=80");
}
#dogbedsfurniture {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1581888227599-779811939961?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1548&q=80");
}
#dogoutdoorsupplies {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1534361960057-19889db9621e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#dogclothing {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1583336663277-620dc1996580?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80");
}
#catsupplies {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1501820488136-72669149e0d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#catfoodtreats {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1554530700-747e22bb4e56?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1404&q=80");
}
#cattoys {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1615332591802-dddd86b35238?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1587&q=80");
}
#catbedsfurniture {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1517451330947-7809dead78d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#birdsupplies {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1472787563973-2f710070695d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80");
}
#birdfoodtreats {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1605207209834-6b6d592283f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1560&q=80");
}
#birdtoys {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1688401129279-6693bcc58bcd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#birdfurniture {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1584632068291-a02d16c877cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1587&q=80");
}
#fishsupplies {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1631473128732-12e7ff0b685b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#fishfood {
  background-image: url("https://images.unsplash.com/photo-1540996772485-94e7e92bc1f0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1577&q=80");
}
#fishaquarium {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1600268200014-0a979a29b14c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1548&q=80");
}
#fishdecoration {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1509725164837-12fbf74dc4d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#services {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1470390356535-d19bbf47bacb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#grooming {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1625321150203-cea4bee44b54?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#coatcare {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1625321171045-1fea4ac688e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80");
}
#nailcare {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1656232501419-fa32ccdd911e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#dogspa {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1611173622933-91942d394b04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80");
}
#boarding {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1453369569379-52cd4fc989af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80");
}
#shortterm {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1506499377715-687ed75d24cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1587&q=80");
}
#daycare {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1575859430826-11e623dd2394?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1587&q=80");
}
#locationhours {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1619892127776-08a763bfe34c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1548&q=80");
}
#northamerica {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1690098520661-ad27b57142e0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1585&q=80");
}
#europe {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://images.unsplash.com/photo-1565946802444-b5ac048a1e04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1587&q=80");
}
#aboutus {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://thumbs.dreamstime.com/z/business-woman-showing-presentation-element-complaint-management-concept-used-company-training-222082780.jpg?w=768");
}
#ourteam {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://media.istockphoto.com/id/1446055575/photo/the-word-about-written-in-wooden-letterpress.jpg?s=2048x2048&w=is&k=20&c=WMD0tUmH8pQxqW-Bw7ep3Lq3AyOMvtc-JF7UpG-H0Tg=");
}
#contactus {
  background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 200, 0.3)),
    url("https://media.istockphoto.com/id/1446055575/photo/the-word-about-written-in-wooden-letterpress.jpg?s=2048x2048&w=is&k=20&c=WMD0tUmH8pQxqW-Bw7ep3Lq3AyOMvtc-JF7UpG-H0Tg=");
}
</style>
<header>
  <nav>
    <ul class="navigation-menu">
      <li class="menu-item active"><a href="/welcome">Home</a></li>
      <li class="menu-item"><a href="">Grievance</a>
        <ul class="sub-menu">
          <li class="menu-item"><a href="/submitgrievance">Submit</a></li>
          <li class="menu-item"><a href="#track-grievance">Track</a></li>
          <li class="menu-item"><a href="#grievance-history">History</a></li>
        </ul>
      </li>
      <li class="menu-item"><a href="">Login</a>Management
        <ul class="sub-menu">
          <li class="menu-item"><a href="/userlog">Student</a></li>
          <li class="menu-item"><a href="/facultylog">Faculty</a></li>
          <li class="menu-item"><a href="management">Management</a></li>
        </ul>
      </li>
      <li class="menu-item">
        <a href="#aboutus">About Us</a>
        <ul class="sub-menu">
          <li class="menu-item"><a href="#ourteam">Team</a></li>
          <li class="menu-item"><a href="#contactus">Contact</a></li>
        </ul>
      </li>
    </ul>
  </nav>
</header>


<div id="home"></div>


