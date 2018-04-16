if (typeof nv_formatString == "undefined") var nv_formatString = "mm/dd/yyyy";
if (typeof nv_gotoString == "undefined") var nv_gotoString = "Go To Current Month";
if (typeof nv_todayString == "undefined") var nv_todayString = "Today is";
if (typeof nv_weekShortString == "undefined") var nv_weekShortString = "Wk";
if (typeof nv_weekString == "undefined") var nv_weekString = "calendar week";
if (typeof nv_scrollLeftMessage == "undefined") var nv_scrollLeftMessage = "Click to scroll to previous month. Hold mouse button to scroll automatically.";
if (typeof nv_scrollRightMessage == "undefined") var nv_scrollRightMessage = "Click to scroll to next month. Hold mouse button to scroll automatically.";
if (typeof nv_selectMonthMessage == "undefined") var nv_selectMonthMessage = "Click to select a month.";
if (typeof nv_selectYearMessage == "undefined") var nv_selectYearMessage = "Click to select a year.";
if (typeof nv_selectDateMessage == "undefined") var nv_selectDateMessage = "Select [date] as date.";
if (typeof nv_aryMonth == "undefined") var nv_aryMonth = "January,February,March,April,May,June,July,August,September,October,November,December".split(",");
if (typeof nv_aryMS == "undefined") var nv_aryMS = "Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec".split(",");
if (typeof nv_aryDayNS == "undefined") var nv_aryDayNS = "Sun,Mon,Tue,Wed,Thu,Fri,Sat".split(",");
if (typeof nv_aryDayName == "undefined") var nv_aryDayName = "Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday".split(",");
if (typeof nv_my_ofs == "undefined") var nv_my_ofs = 7;
if (typeof nv_siteroot == "undefined") var nv_siteroot = "/";
var popCalendar = {
    enablePast: true,
    fixedX: -1,
    fixedY: -1,
    startAt: 1,
    showWeekNumber: false,
    showToday: true,
    showDayLetter: false,
    theme: "default",
    hideElements: false,
    o: null,
    om: null,
    oy: null,
    monthSelected: null,
    yearSelected: null,
    dateSelected: null,
    omonthSelected: null,
    oyearSelected: null,
    odateSelected: null,
    yearConstructed: null,
    intervalID1: null,
    intervalID2: null,
    timeoutID1: null,
    timeoutID2: null,
    ctlToPlaceValue: null,
    ctlNow: null,
    dateFormat: null,
    nStartingYear: null,
    curX: 0,
    curY: 0,
    visYear: 0,
    visMonth: 0,
    bPageLoaded: false,
    ie: /msie/i.test(navigator.userAgent) &&
        !/opera/i.test(navigator.userAgent),
    ie7: /msie 7/i.test(navigator.userAgent),
    $: function() {
        for (var a = [], c = 0; c < arguments.length; c++) {
            var d = arguments[c];
            typeof d == "string" && (d = document.getElementById(d));
            if (arguments.length == 1) return d;
            a.push(d)
        }
        return a
    },
    today: new Date,
    dateNow: null,
    monthNow: null,
    yearNow: null,
    bShow: false,
    hideElement: function(a, c) {
        if (this.ie && !this.ie7)
            for (var d = 0; d < document.all.tags(a).length; d++) {
                var b = document.all.tags(a)[d];
                if (b && b.offsetParent) {
                    objLeft = b.offsetLeft;
                    objTop = b.offsetTop;
                    for (objParent = b.offsetParent; objParent.tagName.toUpperCase() != "BODY";) objLeft += objParent.offsetLeft, objTop += objParent.offsetTop, objParent = objParent.offsetParent;
                    objHeight = b.offsetHeight;
                    objWidth = b.offsetWidth;
                    if (!(c.offsetLeft + c.offsetWidth <= objLeft) && !(c.offsetTop + c.offsetHeight <= objTop) && !(c.offsetTop >= objTop + objHeight + b.height) && !(c.offsetLeft >= objLeft + objWidth)) b.style.visibility = "hidden"
                }
            }
    },
    showElement: function(a) {
        if (this.ie && !this.ie7)
            for (var c = 0; c < document.all.tags(a).length; c++) {
                var d = document.all.tags(a)[c];
                if (d && d.offsetParent) d.style.visibility = ""
            }
    },
    getLeft: function(a) {
        return a.offsetParent ? a.offsetLeft + this.getLeft(a.offsetParent) : a.offsetLeft
    },
    getTop: function(a) {
        return a.offsetParent ? a.offsetTop + this.getTop(a.offsetParent) : a.offsetTop
    },
    init: function(a) {
        var c = this.today.getTimezoneOffset() / 60;
        this.today.setHours(this.today.getHours() + c + nv_my_ofs);
        this.dateNow = this.today.getDate();
        this.monthNow = this.today.getMonth();
        this.yearNow = this.today.getFullYear();
        document.write('<div onclick="popCalendar.bShow=true" id="pcIDcalendar" style="visibility:none"><table style="width:' +
            (this.showWeekNumber ? 250 : 230) + 'px;"><tr><td><div id="pcIDcaption" unselectable="on"></div></td></tr><tr><td><div id="pcIDcontent">.</div></td></tr>');
        this.showToday && document.write('<tr><td><div id="pcIDfooter"></div></td></tr>');
        document.write('</table></div><div id="pcIDselectMonth"></div><div id="pcIDselectYear"></div>');
        this.o = this.$("pcIDcalendar");
        popCalendar.hide();
        this.om = this.$("pcIDselectMonth");
        this.oy = this.$("pcIDselectYear");
        this.yearConstructed = false;
        c = '<div id="pcIDleft"><a href="javascript:void(0)" onclick="popCalendar.decMonth()" onmouseout="clearInterval(popCalendar.intervalID1);" onmousedown="clearTimeout(popCalendar.timeoutID1);popCalendar.timeoutID1=setTimeout(\'popCalendar.StartDecMonth()\',500)" onmouseup="clearTimeout(popCalendar.timeoutID1);clearInterval(popCalendar.intervalID1)" title="' +
            nv_scrollLeftMessage + '">&nbsp;&nbsp;&nbsp;</a></div>';
        c += '<div id="pcIDright"><a href="javascript:void(0)" onclick="popCalendar.incMonth()" onmouseout="clearInterval(popCalendar.intervalID1);" onmousedown="clearTimeout(popCalendar.timeoutID1);popCalendar.timeoutID1=setTimeout(\'popCalendar.StartIncMonth()\',500)" onmouseup="clearTimeout(popCalendar.timeoutID1);clearInterval(popCalendar.intervalID1)" title="' + nv_scrollRightMessage + '">&nbsp;&nbsp;&nbsp;</a></div>';
        c += '<div id="pcIDMonth" onclick="popCalendar.popUpMonth()" title="' +
            nv_selectMonthMessage + '"></div>';
        c += '<div id="pcIDYear"  onclick="popCalendar.popUpYear()" title="' + nv_selectYearMessage + '"></div>';
        this.$("pcIDcaption").innerHTML = c;
        if (!a) document.onkeypress = function(a) {
            if (!a) a = window.event;
            a.keyCode == 27 && popCalendar.hide()
        }, document.onclick = function() {
            popCalendar.bShow || popCalendar.hide();
            popCalendar.bShow = false
        };
        a = document.createElement("link");
        with(a) type = "text/css", rel = "stylesheet", href = nv_siteroot + "js/popcalendar/calendar_themes/" + this.theme + "/style.css", media =
            "screen";
        document.getElementsByTagName("head")[0].appendChild(a);
        this.bPageLoaded = true
    },
    hide: function() {
        this.o.style.visibility = "hidden";
//        this.o.style.display = "none"; // PhuongNLT
        if (this.om != null) this.om.style.visibility = "hidden";
        if (this.oy != null) this.oy.style.visibility = "hidden";
        this.hideElements && (this.showElement("SELECT"), this.showElement("APPLET"))
    },
    HolidaysCounter: 0,
    Holidays: [],
    HolidayRec: function(a, c, d, b) {
        this.d = a;
        this.m = c;
        this.y = d;
        this.desc = b
    },
    addHoliday: function(a, c, d, b) {
        this.Holidays[this.HolidaysCounter++] = new this.HolidayRec(a,
            c, d, b)
    },
    padZero: function(a) {
        return a < 10 ? "0" + a : a
    },
    constructDate: function(a, c, d) {
        var b = this.dateFormat,
            b = b.replace("dd", "<e>"),
            b = b.replace("d", "<d>"),
            b = b.replace("<e>", this.padZero(a)),
            b = b.replace("<d>", a),
            b = b.replace("mmmm", "<p>"),
            b = b.replace("mmm", "<o>"),
            b = b.replace("mm", "<n>"),
            b = b.replace("m", "<m>"),
            b = b.replace("<m>", c + 1),
            b = b.replace("<n>", this.padZero(c + 1)),
            b = b.replace("<o>", nv_aryMonth[c]),
            b = b.replace("<p>", nv_aryMS[c]),
            b = b.replace("yyyy", d),
            b = b.replace("yy", this.padZero(d % 100)),
            b = b.replace("hh",
                this.hour),
            b = b.replace("xx", this.minute),
            b = b.replace("ss", this.second);
        return b.replace("yy", this.padZero(d % 100))
    },
    close: function(a) {
        this.hide();
        if (a) this.dateSelected = a;
        this.ctlToPlaceValue.value = this.constructDate(this.dateSelected, this.monthSelected, this.yearSelected)
    },
    setToday: function() {
        this.dateSelected = this.dateNow;
        this.monthSelected = this.monthNow;
        this.yearSelected = this.yearNow;
        this.construct()
    },
    StartDecMonth: function() {
        this.intervalID1 = setInterval("popCalendar.decMonth()", 80)
    },
    StartIncMonth: function() {
        this.intervalID1 =
            setInterval("popCalendar.incMonth()", 80)
    },
    incMonth: function() {
        this.monthSelected++;
        if (this.monthSelected > 11) this.monthSelected = 0, this.yearSelected++;
        this.construct()
    },
    decMonth: function() {
        this.monthSelected--;
        if (this.monthSelected < 0) this.monthSelected = 11, this.yearSelected--;
        this.construct()
    },
    constructMonth: function() {
        this.popDownYear();
        var a = "";
        for (i = 0; i < 12; i++) {
            var c = nv_aryMonth[i];
            i == this.monthSelected && (c = "<strong>" + c + "</strong>");
            a += '<li><a href="javascript:void(0);" onclick="popCalendar.monthSelected=' +
                i + ';popCalendar.construct();popCalendar.popDownMonth();event.cancelBubble=true">' + c + "</a></li>"
        }
        this.om.innerHTML = '<ul onmouseover="clearTimeout(popCalendar.timeoutID1)" onmouseout="clearTimeout(popCalendar.timeoutID1);popCalendar.timeoutID1=setTimeout(\'popCalendar.popDownMonth()\',100);event.cancelBubble=true">' + a + "</ul>"
    },
    popUpMonth: function() {
        var a;
        this.visMonth == 1 ? (this.popDownMonth(), this.visMonth--) : (this.constructMonth(), this.om.style.visibility = "visible", a = parseInt(this.o.style.left) + this.$("pcIDMonth").offsetLeft,
            this.ie && (a += 1), this.om.style.left = a + "px", this.om.style.top = parseInt(this.o.style.top) + 19 + "px", this.hideElements && (this.hideElement("SELECT", this.om), this.hideElement("APPLET", this.om)), this.visMonth++)
    },
    popDownMonth: function() {
        this.om.style.visibility = "hidden";
        this.visMonth = 0
    },
    incYear: function() {
        for (var a = 0; a < 7; a++) {
            var c = a + this.nStartingYear + 1;
            this.$("pcY" + a).innerHTML = c == this.yearSelected ? "<strong>" + c + "</strong>" : c
        }
        this.nStartingYear++;
        this.bShow = true
    },
    decYear: function() {
        for (var a = 0; a < 7; a++) {
            var c =
                a + this.nStartingYear - 1;
            this.$("pcY" + a).innerHTML = c == this.yearSelected ? "<strong>" + c + "</strong>" : c
        }
        this.nStartingYear--;
        this.bShow = true
    },
    selectYear: function(a) {
        this.yearSelected = parseInt(a + this.nStartingYear);
        this.yearConstructed = false;
        this.construct();
        this.popDownYear()
    },
    constructYear: function() {
        this.popDownMonth();
        var a = "";
        if (!this.yearConstructed) {
            var a = '<li><a href="javascript:void(0);" onmouseout="clearInterval(popCalendar.intervalID1);" onmousedown="clearInterval(popCalendar.intervalID1);popCalendar.intervalID1=setInterval(\'popCalendar.decYear()\',30)" onmouseup="clearInterval(popCalendar.intervalID1)">-</a></li>',
                c = 0;
            this.nStartingYear = this.yearSelected - 3;
            for (var d = this.yearSelected - 3; d <= this.yearSelected + 3; d++) {
                var b = d;
                d == this.yearSelected && (b = "<strong>" + b + "</strong>");
                a += '<li><a href="javascript:void(0);" id="pcY' + c + '" onclick="popCalendar.selectYear(' + c + ');event.cancelBubble=true">' + b + "</a></li>";
                c++
            }
            a += '<li><a href="javascript:void(0);" onmouseout="clearInterval(popCalendar.intervalID2);" onmousedown="clearInterval(popCalendar.intervalID2);popCalendar.intervalID2=setInterval(\'popCalendar.incYear()\',30)" onmouseup="clearInterval(popCalendar.intervalID2)">+</a></li>';
            this.oy.innerHTML = '<ul onmouseover="clearTimeout(popCalendar.timeoutID2)" onmouseout="clearTimeout(popCalendar.timeoutID2);popCalendar.timeoutID2=setTimeout(\'popCalendar.popDownYear()\',100)">' + a + "</ul>";
            this.yearConstructed = true
        }
    },
    popDownYear: function() {
        clearInterval(this.intervalID1);
        clearTimeout(this.timeoutID1);
        clearInterval(this.intervalID2);
        clearTimeout(this.timeoutID2);
        this.oy.style.visibility = "hidden";
        this.visYear = 0
    },
    popUpYear: function() {
        var a;
        this.visYear == 1 ? (this.popDownYear(), this.visYear--) :
            (this.constructYear(), this.oy.style.visibility = "visible", a = parseInt(this.o.style.left) + this.$("pcIDYear").offsetLeft, this.ie && (a += 1), this.oy.style.left = a + "px", this.oy.style.top = parseInt(this.o.style.top) + 19 + "px", this.visYear++)
    },
    WeekNbr: function(a) {
        a == null && (a = new Date(this.yearSelected, this.monthSelected, 1));
        var c = a.getFullYear(),
            d = a.getMonth() + 1,
            a = this.startAt == 0 ? a.getDate() + 1 : a.getDate(),
            b = Math.floor((14 - d) / 12),
            c = c + 4800 - b,
            d = a + Math.floor((153 * (d + 12 * b - 3) + 2) / 5) + 365 * c + (Math.floor(c / 4) - Math.floor(c /
                100) + Math.floor(c / 400)) - 32045,
            d = (d + 31741 - d % 7) % 146097 % 36524 % 1461,
            c = Math.floor(d / 1460);
        return Math.floor(((d - c) % 365 + c) / 7) + 1
    },
    construct: function() {
        var a = [31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
            c = new Date(this.yearSelected, this.monthSelected, 1);
        this.monthSelected == 1 ? (a = new Date(this.yearSelected, this.monthSelected + 1, 1), a = new Date(a - 864E5), a = a.getDate()) : a = a[this.monthSelected];
        c = c.getDay() - this.startAt;
        c < 0 && (c = 6);
        var d = "<table><thead><tr>";
        this.showWeekNumber && (d += '<th><acronym title="' + nv_weekString + '">' +
            nv_weekShortString + "</acronym></th>");
        for (var b = 0; b < 7; b++) d += this.showDayLetter ? "<th>" + nv_aryDayNS[(b + this.startAt) % 7].charAt(0) + "</th>" : "<th>" + nv_aryDayNS[(b + this.startAt) % 7] + "</th>";
        d += "</tr></thead><tbody><tr>";
        this.showWeekNumber && (d += '<td class="pcWeekNumber">' + this.WeekNbr(this.startDate) + "</td>");
        for (b = 1; b <= c; b++) d += "<td>&nbsp;</td>";
        for (b = 1; b <= a; b++) {
            c++;
            for (var e = "", f = "", h = "", g = 0; g < this.HolidaysCounter; g++)
                if (parseInt(this.Holidays[g].d) == b && parseInt(this.Holidays[g].m) == this.monthSelected +
                    1 && (parseInt(this.Holidays[g].y) == 0 || parseInt(this.Holidays[g].y) == this.yearSelected && parseInt(this.Holidays[g].y) != 0)) e = "pcDayHoliday ", h += h == "" ? this.Holidays[g].desc : "\n" + this.Holidays[g].desc;
            h = h.replace('/"/g', "&quot;");
            e += b == this.odateSelected && this.monthSelected == this.omonthSelected && this.yearSelected == this.oyearSelected ? "pcDaySelected" : b == this.dateNow && this.monthSelected == this.monthNow && this.yearSelected == this.yearNow ? "pcToday" : c % 7 == this.startAt * -1 + 1 || c % 7 == this.startAt * -1 + 7 && this.startAt ==
                1 || c % 7 == this.startAt && this.startAt == 0 ? "pcWeekend" : "pcDay";
            !this.enablePast && (this.yearSelected < this.yearNow || this.yearSelected == this.yearNow && this.monthSelected < this.monthNow || this.yearSelected == this.yearNow && this.monthSelected == this.monthNow && b < this.dateNow) ? e += "Past" : f = 'href="javascript:void(0);" onclick="javascript:popCalendar.close(' + b + ');"';
            d += '<td class="' + e + '"><a title="' + h + '" ' + f + ">" + b + "</a></td>";
            (c + this.startAt) % 7 == this.startAt && (d += "</tr>", b < a && (d += "<tr>", this.showWeekNumber && (d += '<td class="pcWeekNumber">' +
                this.WeekNbr(new Date(this.yearSelected, this.monthSelected, b + 1)) + "</td>")))
        }
        c % 7 != 0 && (d += "</tr>");
        d += "</tbody></table>";
        this.$("pcIDcontent").innerHTML = d;
        this.$("pcIDMonth").innerHTML = '<a href="javascript:void(0)">' + nv_aryMonth[this.monthSelected] + "</a>";
        this.$("pcIDYear").innerHTML = '<a href="javascript:void(0)">' + this.yearSelected + "</a>"
    },
    show: function(a, c, d, b, e, f, h) {
        if (h != null) this.startAt = h;
        d || (d = nv_formatString);
        a || (a = this);
        c || (c = a);
        this.enablePast = b != null ? b : this.enablePast;
        this.fixedX = e != null ?
            e : -1;
        this.fixedY = f != null ? f : -1;
        if (this.showToday) this.$("pcIDfooter").innerHTML = nv_todayString + ' <a title="' + nv_gotoString + '" href="javascript:void(0);" onclick="javascript:popCalendar.setToday();">' + nv_aryDayName[this.today.getDay() % 7] + ", " + this.dateNow + " " + nv_aryMS[this.monthNow] + " " + this.yearNow + "</a>";
        this.popUp(a, c, d)
    },
    popUp: function(a, c, d) {
        var b = "",
            e = [];
        typeof a == "string" && (a = this.$(a));
        typeof c == "string" && (c = this.$(c));
        if (this.bPageLoaded) {
            if (this.o.style.visibility == "hidden") {
                this.ctlToPlaceValue =
                    c;
                this.dateFormat = d || this.dateFormat;
                b = " ";
                e = this.dateFormat.split(b);
                e.length < 3 && (b = "/", e = this.dateFormat.split(b), e.length < 3 && (b = ".", e = this.dateFormat.split(b), e.length < 3 && (b = "-", e = this.dateFormat.split(b), e.length < 3 && (b = ""))));
                d = 0;
                if (b != "")
                    for (var b = c.value.split(b), f = 0; f < 3; f++)
                        if (e[f] == "d" || e[f] == "dd") this.dateSelected = parseInt(b[f], 10), d++;
                        else if (e[f] == "m" || e[f] == "mm") this.monthSelected = parseInt(b[f], 10) - 1, d++;
                else if (e[f] == "yyyy") this.yearSelected = parseInt(b[f], 10), d++;
                else if (e[f] == "mmm")
                    for (j =
                        0; j < 12; j++) {
                        if (b[f] == nv_aryMonth[j]) this.monthSelected = j, d++
                    } else if (e[f] == "mmmm")
                        for (j = 0; j < 12; j++)
                            if (b[f] == nv_aryMS[j]) this.monthSelected = j, d++;
                c = c.value.split(" ");
                if (c[1] != null) {
                    c = c[1].split(":");
                    if (c[0].length == 2) this.hour = c[0];
                    if (c[1].length == 2) this.minute = c[1];
                    if (c[2].length == 2) this.second = c[2]
                } else this.second = this.minute = this.hour = 0;
                if (d != 3 || isNaN(this.dateSelected) || isNaN(this.monthSelected) || this.monthSelected < 0 || isNaN(this.yearSelected)) this.dateSelected = this.dateNow, this.monthSelected =
                    this.monthNow, this.yearSelected = this.yearNow;
                this.odateSelected = this.dateSelected;
                this.omonthSelected = this.monthSelected;
                this.oyearSelected = this.yearSelected;
                typeof jQuery != "undefined" ? (this.o.style.top = this.fixedY == -1 ? $(a).position().top + a.offsetHeight + "px" : this.fixedY + "px", this.o.style.left = this.fixedX == -1 ? $(a).position().left + "px" : this.fixedX + "px") : (this.o.style.top = this.fixedY == -1 ? a.offsetTop + this.getTop(a.offsetParent) + a.offsetHeight + 2 + "px" : this.fixedY + "px", this.o.style.left = this.fixedX == -1 ?
                    a.offsetLeft + this.getLeft(a.offsetParent) + "px" : this.fixedX + "px");
                this.construct(1, this.monthSelected, this.yearSelected);
                this.o.style.visibility = "visible";
                this.o.style.display = "block"; // PhuongNLT
                this.hideElements && (this.hideElement("SELECT", this.$("pcIDcalendar")), this.hideElement("APPLET", this.$("pcIDcalendar")));
                this.bShow = true
            } else popCalendar.hide(), this.ctlNow != a && this.popUp(a, c, d);
            this.ctlNow = a
        }
    }
};
popCalendar.init();