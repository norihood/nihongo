if ("undefined" == typeof nv_siteroot) var nv_siteroot = "/";
if ("undefined" == typeof nv_sitelang) var nv_sitelang = "en";
if ("undefined" == typeof nv_name_variable) var nv_name_variable = "nv";
if ("undefined" == typeof nv_fc_variable) var nv_fc_variable = "op";
if ("undefined" == typeof nv_lang_variable) var nv_lang_variable = "language";
if ("undefined" == typeof nv_module_name) var nv_module_name = "";
if ("undefined" == typeof nv_area_admin) var nv_area_admin = 0;
if ("undefined" == typeof nv_my_ofs) var nv_my_ofs = 7;
if ("undefined" == typeof nv_my_dst) var nv_my_dst = !1;
if ("undefined" == typeof nv_cookie_prefix) var nv_cookie_prefix = "nv3";
var OP = -1 != navigator.userAgent.indexOf("Opera"),
    IE = -1 != navigator.userAgent.indexOf("MSIE") && !OP,
    GK = -1 != navigator.userAgent.indexOf("Gecko"),
    SA = -1 != navigator.userAgent.indexOf("Safari"),
    DOM = document.getElementById,
    NS4 = document.layers,
    nv_mailfilter = /^[_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,6}$/,
    nv_numcheck = /^([0-9])+$/,
    nv_namecheck = /^([a-zA-Z0-9_-])+$/,
    nv_md5check = /^[a-z0-9]{32}$/,
    nv_imgexts = /^.+\.(jpg|gif|png|bmp)$/,
    nv_iChars = "!@#$%^&*()+=-[]\\';,./{}|\":<>?",
    nv_specialchars = /\$|,|@|#|~|`|\%|\*|\^|\&|\(|\)|\+|\=|\[|\-|\_|\]|\[|\}|\{|\;|\:|\'|\"|\<|\>|\?|\||\\|\!|\$|\./g,
    nv_old_Minute = -1,
    strHref = window.location.href;
if (-1 < strHref.indexOf("?")) var strHref_split = strHref.split("?"),
    script_name = strHref_split[0],
    query_string = strHref_split[1];
else script_name = strHref, query_string = "";

function nv_email_check(a) {
    return 7 <= a.value.length && nv_mailfilter.test(a.value) ? !0 : !1
}

function nv_num_check(a) {
    return 1 <= a.value.length && nv_numcheck.test(a.value) ? !0 : !1
}

function nv_name_check(a) {
    return "" != a.value && nv_namecheck.test(a.value) ? !0 : !1
}

function nv_md5_check(a) {
    return nv_md5check.test(a.value) ? !0 : !1
}

function nv_iChars_check(a) {
    for (var b = 0; b < a.value.length; b++)
        if (-1 != nv_iChars.indexOf(a.value.charAt(b))) return !0;
    return !1
}

function nv_iChars_Remove(a) {
    return a.replace(nv_specialchars, "")
}

function formatStringAsUriComponent(a) {
    a = a.replace(/<\/?[^>]*>/gm, " ");
    a = a.replace(/&[\w]+;/g, "");
    a = a.replace(/[\.\,\"\'\?\!\;\:\#\$\%\&\(\)\*\+\-\/\<\>\=\@\[\]\\^\_\{\}\|\~]/g, "");
    a = a.replace(/\s{2,}/g, " ");
    return a = a.replace(/^\s+|\s+$/g, "")
}

function nv_setCookie(a, b, c) {
    if (c) {
        var e = new Date;
        e.setDate(e.getDate() + c);
        e = e.toGMTString()
    }
    var d = document.domain,
        d = d.replace(/www\./g, ""),
        d = /^([0-9a-z][0-9a-z-]+\.)+[a-z]{2,6}$/.test(d) ? "." + d : "";
    document.cookie = a + "=" + escape(b) + (c ? "; expires=" + e : "") + (d ? "; domain=" + d : "") + "; path=" + nv_siteroot
}

function nv_getCookie(a) {
    var b = " " + document.cookie,
        a = " " + a + "=",
        c = null,
        e = 0,
        d = 0;
    if (0 < b.length && (e = b.indexOf(a), -1 != e)) {
        e += a.length;
        d = b.indexOf(";", e);
        if (-1 == d) d = b.length;
        c = unescape(b.substring(e, d))
    }
    return c
}

function nv_check_timezone() {
    var a = document.domain,
        a = a.replace(/www\./g, ""),
        a = /^([0-9a-z][0-9a-z-]+\.)+[a-z]{2,6}$/.test(a) ? "." + a : "",
        b = nv_getCookie(nv_cookie_prefix + "_cltz"),
        c = new Date,
        e = new Date(Date.UTC(2005, 6, 30, 0, 0, 0, 0)),
        d = new Date(Date.UTC(2005, 12, 30, 0, 0, 0, 0)),
        c = -e.getTimezoneOffset() + "." + -d.getTimezoneOffset() + "." + -c.getTimezoneOffset(),
        c = c + ("|" + nv_siteroot),
        c = c + ("|" + a);
    rawurldecode(b) != c && nv_setCookie(nv_cookie_prefix + "_cltz", rawurlencode(c), 365)
}

function is_array(a) {
    return a instanceof Array
}

function strip_tags(a, b) {
    var c = "",
        e = !1,
        d = [],
        g = [],
        h = "",
        f = 0,
        j = "",
        i = "";
    b && (g = b.match(/([a-zA-Z0-9]+)/gi));
    a += "";
    d = a.match(/(<\/?[\S][^>]*>)/gi);
    for (c in d)
        if (!isNaN(c)) {
            i = d[c].toString();
            e = !1;
            for (j in g)
                if (h = g[j], f = -1, 0 != f && (f = i.toLowerCase().indexOf("<" + h + ">")), 0 != f && (f = i.toLowerCase().indexOf("<" + h + " ")), 0 != f && (f = i.toLowerCase().indexOf("</" + h)), 0 == f) {
                    e = !0;
                    break
                }
            e || (a = a.split(i).join(""))
        }
    return a
}

function trim(a, b) {
    var c, e = 0,
        d = 0,
        a = a + "";
    c = b ? (b + "").replace(/([\[\]\(\)\.\?\/\*\{\}\+\$\^\:])/g, "$1") : " \n\r\t\u000c\u000b\u00a0\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u200b\u2028\u2029\u3000";
    e = a.length;
    for (d = 0; d < e; d++)
        if (-1 === c.indexOf(a.charAt(d))) {
            a = a.substring(d);
            break
        }
    e = a.length;
    for (d = e - 1; 0 <= d; d--)
        if (-1 === c.indexOf(a.charAt(d))) {
            a = a.substring(0, d + 1);
            break
        }
    return -1 === c.indexOf(a.charAt(0)) ? a : ""
}

function rawurlencode(a) {
    a = (a + "").toString();
    return encodeURIComponent(a).replace(/!/g, "%21").replace(/'/g, "%27").replace(/\(/g, "%5B").replace(/\)/g, "%5D").replace(/\*/g, "%2A")
}

function rawurldecode(a) {
    return decodeURIComponent(a)
}

function is_numeric(a) {
    return !isNaN(a)
}

function intval(a, b) {
    var c = typeof a;
    if ("boolean" === c) return a ? 1 : 0;
    return "string" === c ? (tmp = parseInt(a, b || 10), isNaN(tmp) || !isFinite(tmp) ? 0 : tmp) : "number" === c && isFinite(a) ? Math.floor(a) : 0
}

function AJAX() {
    this.http_request = !1;
    this.mimetype = "text/html";
    this.containerid = this.callback = !1;
    this.rmethod = "POST";
    this.response = "text";
    this.request = function(a, b, c, e, d) {
        if ("undefined" != typeof XMLHttpRequest) this.http_request = new XMLHttpRequest;
        else if (window.ActiveXObject) try {
            this.http_request = new ActiveXObject("Msxml2.XMLHTTP")
        } catch (g) {
            try {
                this.http_request = new ActiveXObject("Microsoft.XMLHTTP")
            } catch (h) {}
        }
        if (this.http_request && b) {
            if ("get" == a.toLowerCase()) this.rmethod = "GET", c && (b += b.indexOf("?") +
                1 ? "&" : "?", b += c);
            b += b.indexOf("?") + 1 ? "&" : "?";
            b += "nocache=" + (new Date).getTime();
            if ("undefined" != typeof e) this.containerid = e;
            if ("undefined" != typeof d) this.callback = d;
            this.http_request.overrideMimeType && this.http_request.overrideMimeType(this.mimetype);
            var f = this;
            this.http_request.onreadystatechange = function() {
                if (f) switch (f.http_request.readyState) {
                    case 4:
                        if (200 == f.http_request.status) {
                            if ("xml" == f.response && f.http_request.responseXML) f.result = f.http_request.responseXML;
                            else if ("text" == f.response && f.http_request.responseText) f.result =
                                f.http_request.responseText;
                            if ("undefined" == typeof f.result) f.result = "";
                            if (f.callback) {
                                if (f.result) f.result = f.result.replace(/[\n\r]/g, "");
                                eval(f.callback + "('" + f.result + "');")
                            } else if (f.containerid) document.getElementById(f.containerid).innerHTML = f.result
                        } else if (f.containerid && !f.callback) document.getElementById(f.containerid).innerHTML = "There was a problem with the request."
                }
            };
            this.http_request.open(this.rmethod, b, !0);
            "GET" == this.rmethod ? this.http_request.send(null) : (this.http_request.setRequestHeader("Content-type",
                "application/x-www-form-urlencoded"), this.http_request.setRequestHeader("Content-length", c.length), this.http_request.setRequestHeader("Connection", "close"), this.http_request.send(c))
        }
    }
}

function nv_get_element_value(a) {
    if (null != a.length) var b = a[0].type;
    if ("undefined" == typeof b || 0 == b) b = a.type;
    var c = "";
    switch (b) {
        case "undefined":
            break;
        case "radio":
            if (a.checked) c = a.value;
            break;
        case "select-multiple":
            b = [];
            for (c = 0; c < a.length; c++)
                if (!0 == a[c].selected) b[b.length] = a[c].value;
            c = b;
            break;
        case "checkbox":
            c = a.checked;
            break;
        default:
            c = a.value
    }
    return c
}

function nv_ajax(a, b, c, e, d) {
    object = new AJAX;
    object.request(a, b, c, e, d)
}

function nv_form_send(a, b, c) {
    for (var e = "", d = 0, g = 0; g < a.elements.length; g++) {
        var h = a.elements[g].name,
            f = nv_get_element_value(a.elements[g]);
        h && f && (d++, 1 < d && (e += "&"), "get" == a.method.toLowerCase() && (h = encodeURIComponent(h), f = encodeURIComponent(f)), e += h + "=" + f)
    }
    nv_ajax(a.method, a.action, e, b, c)
}

function nv_is_dst() {
    var a = new Date,
        b = new Date,
        c = new Date;
    b.setMonth(2);
    b.setDate(1);
    b.setHours(2);
    b.setMinutes(0);
    b.setSeconds(0);
    b.getDay() && b.setDate(b.getDate() + (7 - b.getDay()));
    b.setDate(b.getDate() + 7);
    c.setMonth(10);
    c.setDate(1);
    c.setHours(2);
    c.setMinutes(0);
    c.setSeconds(0);
    c.getDay() && c.setDate(c.getDate() + (7 - c.getDay()));
    return a > b && a < c
}

function nv_DigitalClock(a) {
    if (document.getElementById(a)) {
        nv_my_dst && nv_is_dst() && (nv_my_ofs += 1);
        var b = new Date,
            c = b.getTimezoneOffset() / 60;
        b.setHours(b.getHours() + c + nv_my_ofs);
        var c = b.getMinutes(),
            e = b.getSeconds();
        if (c != nv_old_Minute) {
            nv_old_Minute = c;
            var d = b.getDay(),
                g = b.getMonth(),
                h = b.getDate(),
                f = b.getYear(),
                b = b.getHours();
            200 > f && (f += 1900);
            var j = new String(nv_aryDayName[d]);
            new String(nv_aryDayNS[d]);
            new String(nv_aryMonth[g]);
            new String(nv_aryMS[g]);
            d = g + 1;
            (new String(f)).substring(2, 4);
            9 >= b && (b =
                "0" + b);
            9 >= c && (c = "0" + c);
            9 >= h && (h = "0" + h);
            9 >= d && (d = "0" + d);
            g = "";
            g = b + ":" + c + "  &nbsp; " + j + ", " + h + "/" + d + "/" + f;
            document.getElementById(a).innerHTML = g
        }
        setTimeout('nv_DigitalClock("' + a + '")', 1E3 * (60 - e))
    }
}

function nv_search_submit(a, b, c, e, d) {
    var a = document.getElementById(a),
        g = formatStringAsUriComponent(a.value);
    "" != g && g.length >= e && g.length <= d ? (document.getElementById(c).disabled = !0, document.getElementById(b), window.location.href = nv_siteroot + "index.php?" + nv_lang_variable + "=" + nv_sitelang + "&" + nv_name_variable + "=search&q=" + rawurlencode(g)) : (a.value = g, messalert = nv_rangelength.replace("{0}", e), messalert = messalert.replace("{1}", d), alert(messalert));
    return !1
}

function nv_show_hidden(a, b) {
    var c = document.getElementById(a);
    2 == b ? "hidden" == c.style.visibility || "none" == c.style.display ? (c.style.visibility = "visible", c.style.display = "block") : (c.style.visibility = "hidden", c.style.display = "none") : 1 == b ? (c.style.visibility = "visible", c.style.display = "block") : (c.style.visibility = "hidden", c.style.display = "none")
}

function nv_checkAll(a, b, c, e) {
    if (a[b].length)
        for (var d = 0; d < a[b].length; d++) a[b][d].checked = e;
    else a[b].checked = e;
    if (a[c].length)
        for (b = 0; b < a[c].length; b++) a[c][b].checked = e;
    else a[c].checked = e
}

function nv_UncheckAll(a, b, c, e) {
    var d = 0;
    if (a[b].length)
        for (var g = 0; g < a[b].length; g++)
            if (a[b][g].checked != e) {
                d = 1;
                break
            }
    b = !1;
    0 == d && (b = e);
    if (a[c].length)
        for (e = 0; e < a[c].length; e++) a[c][e].checked = b;
    else a[c].checked = b
}

function nv_set_disable_false(a) {
    if (document.getElementById(a)) document.getElementById(a).disabled = !1
}

function nv_settimeout_disable(a, b) {
    document.getElementById(a).disabled = !0;
    return nv_timer = setTimeout('nv_set_disable_false("' + a + '")', b)
}

function nv_randomPassword(a) {
    for (var b = "", c = 0; c < a; c++) b += "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".charAt(Math.floor(62 * Math.random()));
    return b
}

function nv_urldecode_ajax(a, b) {
    a = rawurldecode(a);
    nv_ajax("get", a, "", b)
}

function nv_change_captcha(a, b) {
    var c = document.getElementById(a);
    nocache = nv_randomPassword(10);
    c.src = nv_siteroot + "index.php?scaptcha=captcha&nocache=" + nocache;
    document.getElementById(b).value = "";
    return !1
}

function NewWindow(a, b, c, e, d) {
    LeftPosition = screen.width ? (screen.width - c) / 2 : 0;
    TopPosition = screen.height ? (screen.height - e) / 2 : 0;
    settings = "height=" + e + ",width=" + c + ",top=" + TopPosition + ",left=" + LeftPosition + ",scrollbars=" + d + ",resizable";
    window.open(a, b, settings)
}
nv_check_timezone();