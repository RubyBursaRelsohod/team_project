"use strict";$(document).ready(function(){function e(){switch(this.innerHTML){case"Welcome":React.render(React.createElement(Description,null),a);break;case"Dev Status":React.render(React.createElement(DevStatus,null),a);break;case"FAQ":React.render(React.createElement(FAQ,null),a);break;case"Our Team":React.render(React.createElement(Team,{members:\u0421onsts.getUsers(\u0421onsts.team)}),a);break;default:React.render(React.createElement(Description,null),a)}}var t=$(".container .about-page .row:first-child");t.append("<div class='col-sm-10 col-md-10' id='about-content' />");var a=t.find("#about-content")[0];React.render(React.createElement(DevStatus,null),a);var c=t.find("#about-nav > li.nav-list-item a");c.click(e)});