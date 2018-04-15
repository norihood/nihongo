function jg_effect_desaturate(t) {
    var e = !!document.createElement("canvas").getContext;
    if (e) {
        var i = document.createElement("canvas"),
            n = i.getContext("2d"),
            o, r, s, a = 0,
            h, l = new Image;
        for (l.src = t, i.width = l.width, i.height = l.height, n.drawImage(l, 0, 0), o = n.getImageData(0, 0, i.width, i.height), r = o.data, s = r.length; s > a; a += 4) h = .3 * r[a] + .59 * r[a + 1] + .11 * r[a + 2], r[a] = r[a + 1] = r[a + 2] = h;
        return n.putImageData(o, 0, 0), i.toDataURL()
    }
    return t
}

function jg_effect_threshold(t) {
    var e = !!document.createElement("canvas").getContext;
    if (e) {
        var i = document.createElement("canvas"),
            n = i.getContext("2d"),
            o, r, s, a = 0,
            h, l = new Image;
        l.src = t, i.width = l.width, i.height = l.height, n.drawImage(l, 0, 0), o = n.getImageData(0, 0, i.width, i.height), r = o.data, s = r.length, threshold = 120;
        for (var a = 0; s > a; a += 4) {
            var u = r[a],
                d = r[a + 1],
                c = r[a + 2],
                f = .2126 * u + .7152 * d + .0722 * c >= threshold ? 255 : 0;
            r[a] = r[a + 1] = r[a + 2] = f
        }
        return n.putImageData(o, 0, 0), i.toDataURL()
    }
    return t
}

function jg_effect_blur(t) {
    var e = !!document.createElement("canvas").getContext;
    if (e) {
        var i = document.createElement("canvas"),
            n = i.getContext("2d"),
            o, r, s, a = 0,
            h, l = 0,
            u = 0,
            d = 30,
            c = 1;
        img = new Image, img.src = t, i.width = img.width, i.height = img.height, n.drawImage(img, 0, 0);
        var o, f = img.width,
            g = img.height;
        o = n.getImageData(l, u, f, g);
        for (var p = o.data, m, v, y, w, b, x, a, I, S, E, _, z, R, T, C = f - 1, j = g - 1, O = f * g, L = d + 1, A = [], D = [], M = [], H = mul_table[d], k = shg_table[d], W = [], F = []; c-- > 0;) {
            for (R = z = 0, x = 0; g > x; x++) {
                for (m = p[R] * L, v = p[R + 1] * L, y = p[R + 2] * L, a = 1; d >= a; a++) I = R + ((a > C ? C : a) << 2), m += p[I++], v += p[I++], y += p[I++];
                for (b = 0; f > b; b++) A[z] = m, D[z] = v, M[z] = y, 0 == x && (W[b] = ((I = b + L) < C ? I : C) << 2, F[b] = (I = b - d) > 0 ? I << 2 : 0), S = R + W[b], E = R + F[b], m += p[S++] - p[E++], v += p[S++] - p[E++], y += p[S++] - p[E++], z++;
                R += f << 2
            }
            for (b = 0; f > b; b++) {
                for (_ = b, m = A[_] * L, v = D[_] * L, y = M[_] * L, a = 1; d >= a; a++) _ += a > j ? 0 : f, m += A[_], v += D[_], y += M[_];
                for (z = b << 2, x = 0; g > x; x++) p[z] = m * H >>> k, p[z + 1] = v * H >>> k, p[z + 2] = y * H >>> k, 0 == b && (W[x] = ((I = x + L) < j ? I : j) * f, F[x] = (I = x - d) > 0 ? I * f : 0), S = b + W[x], E = b + F[x], m += A[S] - A[E], v += D[S] - D[E], y += M[S] - M[E], z += f << 2
            }
        }
        return n.putImageData(o, l, u), i.toDataURL()
    }
    return t
}

function jg_effect_vintage(t) {
    var e = {
            onError: function() {
                alert("ERROR")
            }
        },
        i = {
            vignette: 1,
            sepia: !0,
            noise: 50,
            desaturate: .2,
            lighten: .1
        };
    new VintageJS(t, e, i)
}

function boxBlurImage(t, e, i, n, o) {
    var r = document.getElementById(t),
        s = r.naturalWidth,
        a = r.naturalHeight,
        h = document.getElementById(e);
    h.style.width = s + "px", h.style.height = a + "px", h.width = s, h.height = a;
    var l = h.getContext("2d");
    l.clearRect(0, 0, s, a), l.drawImage(r, 0, 0), isNaN(i) || 1 > i || (n ? boxBlurCanvasRGBA(e, 0, 0, s, a, i, o) : boxBlurCanvasRGB(e, 0, 0, s, a, i, o))
}

function boxBlurCanvasRGBA(t, e, i, n, o, r, s) {
    if (!(isNaN(r) || 1 > r)) {
        r |= 0, isNaN(s) && (s = 1), s |= 0, s > 3 && (s = 3), 1 > s && (s = 1);
        var a = document.getElementById(t),
            h = a.getContext("2d"),
            l;
        try {
            try {
                l = h.getImageData(e, i, n, o)
            } catch (u) {
                try {
                    netscape.security.PrivilegeManager.enablePrivilege("UniversalBrowserRead"), l = h.getImageData(e, i, n, o)
                } catch (u) {
                    throw alert("Cannot access local image"), new Error("unable to access local image data: " + u);
                    return
                }
            }
        } catch (u) {
            throw alert("Cannot access image"), new Error("unable to access image data: " + u);
            return
        }
        for (var d = l.data, c, f, g, p, m, v, y, w, b, x, I, S, E, _, z, R = n - 1, T = o - 1, C = n * o, j = r + 1, O = mul_table[r], L = shg_table[r], A = [], D = [], M = [], H = [], k = [], W = []; s-- > 0;) {
            for (E = S = 0, v = 0; o > v; v++) {
                for (c = d[E] * j, f = d[E + 1] * j, g = d[E + 2] * j, p = d[E + 3] * j, y = 1; r >= y; y++) w = E + ((y > R ? R : y) << 2), c += d[w++], f += d[w++], g += d[w++], p += d[w];
                for (m = 0; n > m; m++) A[S] = c, D[S] = f, M[S] = g, H[S] = p, 0 == v && (k[m] = ((w = m + j) < R ? w : R) << 2, W[m] = (w = m - r) > 0 ? w << 2 : 0), b = E + k[m], x = E + W[m], c += d[b++] - d[x++], f += d[b++] - d[x++], g += d[b++] - d[x++], p += d[b] - d[x], S++;
                E += n << 2
            }
            for (m = 0; n > m; m++) {
                for (I = m, c = A[I] * j, f = D[I] * j, g = M[I] * j, p = H[I] * j, y = 1; r >= y; y++) I += y > T ? 0 : n, c += A[I], f += D[I], g += M[I], p += H[I];
                for (S = m << 2, v = 0; o > v; v++) d[S + 3] = z = p * O >>> L, z > 0 ? (z = 255 / z, d[S] = (c * O >>> L) * z, d[S + 1] = (f * O >>> L) * z, d[S + 2] = (g * O >>> L) * z) : d[S] = d[S + 1] = d[S + 2] = 0, 0 == m && (k[v] = ((w = v + j) < T ? w : T) * n, W[v] = (w = v - r) > 0 ? w * n : 0), b = m + k[v], x = m + W[v], c += A[b] - A[x], f += D[b] - D[x], g += M[b] - M[x], p += H[b] - H[x], S += n << 2
            }
        }
        h.putImageData(l, e, i)
    }
}

function boxBlurCanvasRGB(t, e, i, n, o, r, s) {
    if (!(isNaN(r) || 1 > r)) {
        r |= 0, isNaN(s) && (s = 1), s |= 0, s > 3 && (s = 3), 1 > s && (s = 1);
        var a = t,
            h = a.getContext("2d"),
            l;
        try {
            try {
                l = h.getImageData(e, i, n, o)
            } catch (u) {
                try {
                    netscape.security.PrivilegeManager.enablePrivilege("UniversalBrowserRead"), l = h.getImageData(e, i, n, o)
                } catch (u) {
                    throw alert("Cannot access local image"), new Error("unable to access local image data: " + u);
                    return
                }
            }
        } catch (u) {
            throw alert("Cannot access image"), new Error("unable to access image data: " + u);
            return
        }
        for (var d = l.data, c, f, g, p, m, v, y, w, b, x, I, S, E, _, z = n - 1, R = o - 1, T = n * o, C = r + 1, j = [], O = [], L = [], A = mul_table[r], D = shg_table[r], M = [], H = []; s-- > 0;) {
            for (E = S = 0, v = 0; o > v; v++) {
                for (c = d[E] * C, f = d[E + 1] * C, g = d[E + 2] * C, y = 1; r >= y; y++) w = E + ((y > z ? z : y) << 2), c += d[w++], f += d[w++], g += d[w++];
                for (m = 0; n > m; m++) j[S] = c, O[S] = f, L[S] = g, 0 == v && (M[m] = ((w = m + C) < z ? w : z) << 2, H[m] = (w = m - r) > 0 ? w << 2 : 0), b = E + M[m], x = E + H[m], c += d[b++] - d[x++], f += d[b++] - d[x++], g += d[b++] - d[x++], S++;
                E += n << 2
            }
            for (m = 0; n > m; m++) {
                for (I = m, c = j[I] * C, f = O[I] * C, g = L[I] * C, y = 1; r >= y; y++) I += y > R ? 0 : n, c += j[I], f += O[I], g += L[I];
                for (S = m << 2, v = 0; o > v; v++) d[S] = c * A >>> D, d[S + 1] = f * A >>> D, d[S + 2] = g * A >>> D, 0 == m && (M[v] = ((w = v + C) < R ? w : R) * n, H[v] = (w = v - r) > 0 ? w * n : 0), b = m + M[v], x = m + H[v], c += j[b] - j[x], f += O[b] - O[x], g += L[b] - L[x], S += n << 2
            }
        }
        h.putImageData(l, e, i)
    }
}
jQuery(document).ready(function($) {
        $("body").on("click", 'div.envirabox-title a[href*="#"]:not([href="#"])', function(t) {
            return location.pathname.replace(/^\//, "") == this.pathname.replace(/^\//, "") && location.hostname == this.hostname ? ($.envirabox.close(), !1) : void 0
        }), $(document).on("envira_image_lazy_load_complete", function(t) {
            if (void 0 !== t && void 0 !== t.image_id && null !== t.image_id) {
                var e = $("div.envira-gallery-public").find("img#" + t.image_id);
                if ($("div.envira-gallery-public").hasClass("envira-gallery-0-columns")) $(e).closest("div.envira-gallery-item-inner").find("div.envira-gallery-position-overlay").delay(100).show();
                else {
                    $(e).closest("div.envira-gallery-item-inner").find("div.envira-gallery-position-overlay").delay(100).show();
                    var i = $(e).closest("div.envira-gallery-item-inner").find(".envira-lazy").width(),
                        n = t.naturalHeight / t.naturalWidth,
                        o = t.naturalHeight / i;
                    if (n > o) var r = o;
                    else var r = n;
                    var s = 100 * r;
                    $(e).closest("div.envira-gallery-item-inner").find(".envira-lazy").css("padding-bottom", s + "%"), $(e).closest("div.envira-gallery-item-inner").find(".envira-lazy").data("envira-changed", "true"), void 0 !== window["envira_container_" + t.gallery_id] && window["envira_container_" + t.gallery_id].on("layoutComplete", function(t, i) {
                        $(e).closest("div.envira-gallery-item-inner").find("span.envira-title").delay(1e3).css("visibility", "visible"), $(e).closest("div.envira-gallery-item-inner").find("span.envira-caption").delay(1e3).css("visibility", "visible")
                    }), $("#envira-gallery-" + t.gallery_id).enviratope("layout")
                }
            }
        })
    }),
    function($) {
        function t() {
            return $("body").height() > $(window).height()
        }
        var e = function(t, e) {
            this.settings = e, this.checkSettings(), this.imgAnalyzerTimeout = null, this.entries = null, this.buildingRow = {
                entriesBuff: [],
                width: 0,
                height: 0,
                aspectRatio: 0
            }, this.lastAnalyzedIndex = -1, this["yield"] = {
                every: 2,
                flushed: 0
            }, this.border = e.border >= 0 ? e.border : e.margins, this.maxRowHeight = this.retrieveMaxRowHeight(), this.suffixRanges = this.retrieveSuffixRanges(), this.offY = this.border, this.rows = 0, this.spinner = {
                phase: 0,
                timeSlot: 150,
                $el: $('<div class="spinner"><span></span><span></span><span></span></div>'),
                intervalId: null
            }, this.checkWidthIntervalId = null, this.galleryWidth = t.width(), this.$gallery = t
        };
        e.prototype.getSuffix = function(t, e) {
            var i, n;
            for (i = t > e ? t : e, n = 0; n < this.suffixRanges.length; n++)
                if (i <= this.suffixRanges[n]) return this.settings.sizeRangeSuffixes[this.suffixRanges[n]];
            return this.settings.sizeRangeSuffixes[this.suffixRanges[n - 1]]
        }, e.prototype.removeSuffix = function(t, e) {
            return t.substring(0, t.length - e.length)
        }, e.prototype.endsWith = function(t, e) {
            return -1 !== t.indexOf(e, t.length - e.length)
        }, e.prototype.getUsedSuffix = function(t) {
            for (var e in this.settings.sizeRangeSuffixes)
                if (this.settings.sizeRangeSuffixes.hasOwnProperty(e)) {
                    if (0 === this.settings.sizeRangeSuffixes[e].length) continue;
                    if (this.endsWith(t, this.settings.sizeRangeSuffixes[e])) return this.settings.sizeRangeSuffixes[e]
                }
            return ""
        }, e.prototype.newSrc = function(t, e, i) {
            var n;
            if (this.settings.thumbnailPath) n = this.settings.thumbnailPath(t, e, i);
            else {
                var o = t.match(this.settings.extension),
                    r = null !== o ? o[0] : "";
                n = t.replace(this.settings.extension, ""), n = this.removeSuffix(n, this.getUsedSuffix(n)), n += this.getSuffix(e, i) + r
            }
            return n
        }, e.prototype.showImg = function(t, e) {
            this.settings.cssAnimation ? (t.addClass("entry-visible"), e && e()) : t.stop().fadeTo(this.settings.imagesAnimationDuration, 1, e)
        }, e.prototype.extractImgSrcFromImage = function(t) {
            var e = "undefined" != typeof t.data("safe-src") ? t.data("safe-src") : t.attr("src");
            return t.data("jg.originalSrc", e), e
        }, e.prototype.imgFromEntry = function(t) {
            var e = t.find("> img");
            return 0 === e.length && (e = t.find("> a > img")), 0 === e.length ? null : e
        }, e.prototype.captionFromEntry = function(t) {
            var e = t.find("> .caption");
            return 0 === e.length ? null : e
        }, e.prototype.displayEntry = function(t, e, i, n, o, r) {
            t.width(n), t.height(r), t.css("top", i), t.css("left", e);
            var s = this.imgFromEntry(t);
            if (null !== s) {
                s.css("width", n), s.css("height", o), s.css("margin-left", -n / 2), s.css("margin-top", -o / 2);
                var a = s.attr("src"),
                    h = this.newSrc(a, n, o);
                s.one("error", function() {
                    s.attr("src", s.data("jg.originalSrc"))
                });
                var l = function() {
                    a !== h && s.attr("src", h)
                };
                "skipped" === t.data("jg.loaded") ? this.onImageEvent(a, $.proxy(function() {
                    this.showImg(t, l), t.data("jg.loaded", !0)
                }, this)) : this.showImg(t, l)
            } else this.showImg(t);
            this.displayEntryCaption(t)
        }, e.prototype.displayEntryCaption = function(t) {
            var e = this.imgFromEntry(t);
            if (null !== e && this.settings.captions) {
                var i = this.captionFromEntry(t);
                if (null === i) {
                    var n = e.attr("alt");
                    this.isValidCaption(n) || (n = t.attr("title")), this.isValidCaption(n) && (i = $('<div class="caption">' + n + "</div>"), t.append(i), t.data("jg.createdCaption", !0))
                }
                null !== i && (this.settings.cssAnimation || i.stop().fadeTo(0, this.settings.captionSettings.nonVisibleOpacity), this.addCaptionEventsHandlers(t))
            } else this.removeCaptionEventsHandlers(t)
        }, e.prototype.isValidCaption = function(t) {
            return "undefined" != typeof t && t.length > 0
        }, e.prototype.onEntryMouseEnterForCaption = function(t) {
            var e = this.captionFromEntry($(t.currentTarget));
            this.settings.cssAnimation ? e.addClass("caption-visible").removeClass("caption-hidden") : e.stop().fadeTo(this.settings.captionSettings.animationDuration, this.settings.captionSettings.visibleOpacity)
        }, e.prototype.onEntryMouseLeaveForCaption = function(t) {
            var e = this.captionFromEntry($(t.currentTarget));
            this.settings.cssAnimation ? e.removeClass("caption-visible").removeClass("caption-hidden") : e.stop().fadeTo(this.settings.captionSettings.animationDuration, this.settings.captionSettings.nonVisibleOpacity)
        }, e.prototype.addCaptionEventsHandlers = function(t) {
            var e = t.data("jg.captionMouseEvents");
            "undefined" == typeof e && (e = {
                mouseenter: $.proxy(this.onEntryMouseEnterForCaption, this),
                mouseleave: $.proxy(this.onEntryMouseLeaveForCaption, this)
            }, t.on("mouseenter", void 0, void 0, e.mouseenter), t.on("mouseleave", void 0, void 0, e.mouseleave), t.data("jg.captionMouseEvents", e))
        }, e.prototype.removeCaptionEventsHandlers = function(t) {
            var e = t.data("jg.captionMouseEvents");
            "undefined" != typeof e && (t.off("mouseenter", void 0, e.mouseenter), t.off("mouseleave", void 0, e.mouseleave), t.removeData("jg.captionMouseEvents"))
        }, e.prototype.prepareBuildingRow = function(t) {
            var e, i, n, o, r, s = !0,
                a = 0,
                h = this.galleryWidth - 2 * this.border - (this.buildingRow.entriesBuff.length - 1) * this.settings.margins,
                l = h / this.buildingRow.aspectRatio,
                u = this.settings.rowHeight,
                d = this.buildingRow.width / h > this.settings.justifyThreshold;
            if (t && "hide" === this.settings.lastRow && !d) {
                for (e = 0; e < this.buildingRow.entriesBuff.length; e++) i = this.buildingRow.entriesBuff[e], this.settings.cssAnimation ? i.removeClass("entry-visible") : i.stop().fadeTo(0, 0);
                return -1
            }
            for (t && !d && "justify" !== this.settings.lastRow && "hide" !== this.settings.lastRow && (s = !1, this.rows > 0 && (u = (this.offY - this.border - this.settings.margins * this.rows) / this.rows, s = u * this.buildingRow.aspectRatio / h > this.settings.justifyThreshold ? !0 : !1)), e = 0; e < this.buildingRow.entriesBuff.length; e++) i = this.buildingRow.entriesBuff[e], n = i.data("jg.width") / i.data("jg.height"), s ? (o = e === this.buildingRow.entriesBuff.length - 1 ? h : l * n, r = l) : (o = u * n, r = u), h -= Math.round(o), i.data("jg.jwidth", Math.round(o)), i.data("jg.jheight", Math.ceil(r)), (0 === e || a > r) && (a = r);
            return this.settings.fixedHeight && a > this.settings.rowHeight && (a = this.settings.rowHeight), this.buildingRow.height = a, s
        }, e.prototype.clearBuildingRow = function() {
            this.buildingRow.entriesBuff = [], this.buildingRow.aspectRatio = 0, this.buildingRow.width = 0
        }, e.prototype.flushRow = function(t) {
            var e = this.settings,
                i, n, o = this.border,
                r;
            if (n = this.prepareBuildingRow(t), t && "hide" === e.lastRow && -1 === n) return void this.clearBuildingRow();
            if (this.maxRowHeight.isPercentage ? this.maxRowHeight.value * e.rowHeight < this.buildingRow.height && (this.buildingRow.height = this.maxRowHeight.value * e.rowHeight) : this.maxRowHeight.value > 0 && this.maxRowHeight.value < this.buildingRow.height && (this.buildingRow.height = this.maxRowHeight.value), "center" === e.lastRow || "right" === e.lastRow) {
                var s = this.galleryWidth - 2 * this.border - (this.buildingRow.entriesBuff.length - 1) * e.margins;
                for (r = 0; r < this.buildingRow.entriesBuff.length; r++) i = this.buildingRow.entriesBuff[r], s -= i.data("jg.jwidth");
                "center" === e.lastRow ? o += s / 2 : "right" === e.lastRow && (o += s)
            }
            for (r = 0; r < this.buildingRow.entriesBuff.length; r++) i = this.buildingRow.entriesBuff[r], this.displayEntry(i, o, this.offY, i.data("jg.jwidth"), i.data("jg.jheight"), this.buildingRow.height), o += i.data("jg.jwidth") + e.margins;
            this.galleryHeightToSet = this.offY + this.buildingRow.height + this.border, this.$gallery.height(this.galleryHeightToSet + this.getSpinnerHeight()), (!t || this.buildingRow.height <= e.rowHeight && n) && (this.offY += this.buildingRow.height + e.margins, this.rows += 1, this.clearBuildingRow(), this.$gallery.trigger("jg.rowflush"))
        };
        var i = !1;
        e.prototype.checkWidth = function() {
            this.checkWidthIntervalId = setInterval($.proxy(function() {
                var e = parseFloat(this.$gallery.width());
                t() === i ? Math.abs(e - this.galleryWidth) > this.settings.refreshSensitivity && (this.galleryWidth = e, this.rewind(), this.startImgAnalyzer(!0)) : (i = t(), this.galleryWidth = e)
            }, this), this.settings.refreshTime)
        }, e.prototype.isSpinnerActive = function() {
            return null !== this.spinner.intervalId
        }, e.prototype.getSpinnerHeight = function() {
            return this.spinner.$el.innerHeight()
        }, e.prototype.stopLoadingSpinnerAnimation = function() {
            clearInterval(this.spinner.intervalId), this.spinner.intervalId = null, this.$gallery.height(this.$gallery.height() - this.getSpinnerHeight()), this.spinner.$el.detach()
        }, e.prototype.startLoadingSpinnerAnimation = function() {
            var t = this.spinner,
                e = t.$el.find("span");
            clearInterval(t.intervalId), this.$gallery.append(t.$el), this.$gallery.height(this.offY + this.buildingRow.height + this.getSpinnerHeight()), t.intervalId = setInterval(function() {
                t.phase < e.length ? e.eq(t.phase).fadeTo(t.timeSlot, 1) : e.eq(t.phase - e.length).fadeTo(t.timeSlot, 0), t.phase = (t.phase + 1) % (2 * e.length)
            }, t.timeSlot)
        }, e.prototype.rewind = function() {
            this.lastAnalyzedIndex = -1, this.offY = this.border, this.rows = 0, this.clearBuildingRow()
        }, e.prototype.updateEntries = function(t) {
            return this.entries = this.$gallery.find(this.settings.selector).toArray(), 0 === this.entries.length ? !1 : (this.settings.filter ? this.modifyEntries(this.filterArray, t) : this.modifyEntries(this.resetFilters, t), $.isFunction(this.settings.sort) ? this.modifyEntries(this.sortArray, t) : this.settings.randomize && this.modifyEntries(this.shuffleArray, t), !0)
        }, e.prototype.insertToGallery = function(t) {
            var e = this;
            $.each(t, function() {
                $(this).appendTo(e.$gallery)
            })
        }, e.prototype.shuffleArray = function(t) {
            var e, i, n;
            for (e = t.length - 1; e > 0; e--) i = Math.floor(Math.random() * (e + 1)), n = t[e], t[e] = t[i], t[i] = n;
            return this.insertToGallery(t), t
        }, e.prototype.sortArray = function(t) {
            return t.sort(this.settings.sort), this.insertToGallery(t), t
        }, e.prototype.resetFilters = function(t) {
            for (var e = 0; e < t.length; e++) $(t[e]).removeClass("jg-filtered");
            return t
        }, e.prototype.filterArray = function(t) {
            var e = this.settings;
            return "string" === $.type(e.filter) ? t.filter(function(t) {
                var i = $(t);
                return i.is(e.filter) ? (i.removeClass("jg-filtered"), !0) : (i.addClass("jg-filtered"), !1)
            }) : $.isFunction(e.filter) ? t.filter(e.filter) : void 0
        }, e.prototype.modifyEntries = function(t, e) {
            var i = e ? this.entries.splice(this.lastAnalyzedIndex + 1, this.entries.length - this.lastAnalyzedIndex - 1) : this.entries;
            i = t.call(this, i), this.entries = e ? this.entries.concat(i) : i
        }, e.prototype.destroy = function() {
            clearInterval(this.checkWidthIntervalId), $.each(this.entries, $.proxy(function(t, e) {
                var i = $(e);
                i.css("width", ""), i.css("height", ""), i.css("top", ""), i.css("left", ""), i.data("jg.loaded", void 0), i.removeClass("jg-entry");
                var n = this.imgFromEntry(i);
                n.css("width", ""), n.css("height", ""), n.css("margin-left", ""), n.css("margin-top", ""), n.attr("src", n.data("jg.originalSrc")), n.data("jg.originalSrc", void 0), this.removeCaptionEventsHandlers(i);
                var o = this.captionFromEntry(i);
                i.data("jg.createdCaption") ? (i.data("jg.createdCaption", void 0), null !== o && o.remove()) : null !== o && o.fadeTo(0, 1)
            }, this)), this.$gallery.css("height", ""), this.$gallery.removeClass("justified-gallery"), this.$gallery.data("jg.controller", void 0)
        }, e.prototype.analyzeImages = function(t) {
            for (var e = this.lastAnalyzedIndex + 1; e < this.entries.length; e++) {
                var i = $(this.entries[e]);
                if (i.data("jg.loaded") === !0 || "skipped" === i.data("jg.loaded")) {
                    var n = this.galleryWidth - 2 * this.border - (this.buildingRow.entriesBuff.length - 1) * this.settings.margins,
                        o = i.data("jg.width") / i.data("jg.height");
                    if (n / (this.buildingRow.aspectRatio + o) < this.settings.rowHeight && (this.flushRow(!1), ++this["yield"].flushed >= this["yield"].every)) return void this.startImgAnalyzer(t);
                    this.buildingRow.entriesBuff.push(i), this.buildingRow.aspectRatio += o, this.buildingRow.width += o * this.settings.rowHeight, this.lastAnalyzedIndex = e
                } else if ("error" !== i.data("jg.loaded")) return
            }
            this.buildingRow.entriesBuff.length > 0 && this.flushRow(!0), this.isSpinnerActive() && this.stopLoadingSpinnerAnimation(), this.stopImgAnalyzerStarter(), this.$gallery.trigger(t ? "jg.resize" : "jg.complete"), this.$gallery.height(this.galleryHeightToSet)
        }, e.prototype.stopImgAnalyzerStarter = function() {
            this["yield"].flushed = 0, null !== this.imgAnalyzerTimeout && clearTimeout(this.imgAnalyzerTimeout)
        }, e.prototype.startImgAnalyzer = function(t) {
            var e = this;
            this.stopImgAnalyzerStarter(), this.imgAnalyzerTimeout = setTimeout(function() {
                e.analyzeImages(t)
            }, .001)
        }, e.prototype.onImageEvent = function(t, e, i) {
            if (e || i) {
                var n = new Image,
                    o = $(n);
                e && o.one("load", function() {
                    o.off("load error"), e(n)
                }), i && o.one("error", function() {
                    o.off("load error"), i(n)
                }), n.src = t
            }
        }, e.prototype.init = function() {
            var t = !1,
                e = !1,
                i = this;
            $.each(this.entries, function(n, o) {
                var r = $(o),
                    s = i.imgFromEntry(r);
                if (r.addClass("jg-entry"), r.data("jg.loaded") !== !0 && "skipped" !== r.data("jg.loaded"))
                    if (null !== i.settings.rel && r.attr("rel", i.settings.rel), null !== i.settings.target && r.attr("target", i.settings.target), null !== s) {
                        var a = i.extractImgSrcFromImage(s);
                        if (s.attr("src", a), i.settings.waitThumbnailsLoad === !1) {
                            var h = parseFloat(s.attr("width")),
                                l = parseFloat(s.attr("height"));
                            if (!isNaN(h) && !isNaN(l)) return r.data("jg.width", h), r.data("jg.height", l), r.data("jg.loaded", "skipped"), e = !0, i.startImgAnalyzer(!1), !0
                        }
                        r.data("jg.loaded", !1), t = !0, i.isSpinnerActive() || i.startLoadingSpinnerAnimation(), i.onImageEvent(a, function(t) {
                            r.data("jg.width", r.find(".envira-gallery-image").data("envira-width")), r.data("jg.height", r.find(".envira-gallery-image").data("envira-height")), r.data("jg.loaded", !0), i.startImgAnalyzer(!1)
                        }, function() {
                            r.data("jg.loaded", "error"), i.startImgAnalyzer(!1)
                        })
                    } else r.data("jg.loaded", !0), r.data("jg.width", r.width() | parseFloat(r.css("width")) | 1), r.data("jg.height", r.height() | parseFloat(r.css("height")) | 1)
            }), t || e || this.startImgAnalyzer(!1), this.checkWidth()
        }, e.prototype.checkOrConvertNumber = function(t, e) {
            if ("string" === $.type(t[e]) && (t[e] = parseFloat(t[e])), "number" !== $.type(t[e])) throw e + " must be a number";
            if (isNaN(t[e])) throw "invalid number for " + e
        }, e.prototype.checkSizeRangesSuffixes = function() {
            if ("object" !== $.type(this.settings.sizeRangeSuffixes)) throw "sizeRangeSuffixes must be defined and must be an object";
            var t = [];
            for (var e in this.settings.sizeRangeSuffixes) this.settings.sizeRangeSuffixes.hasOwnProperty(e) && t.push(e);
            for (var i = {
                    0: ""
                }, n = 0; n < t.length; n++)
                if ("string" === $.type(t[n])) try {
                    var o = parseInt(t[n].replace(/^[a-z]+/, ""), 10);
                    i[o] = this.settings.sizeRangeSuffixes[t[n]]
                } catch (r) {
                    throw "sizeRangeSuffixes keys must contains correct numbers (" + r + ")"
                } else i[t[n]] = this.settings.sizeRangeSuffixes[t[n]];
            this.settings.sizeRangeSuffixes = i
        }, e.prototype.retrieveMaxRowHeight = function() {
            var t = {};
            if ("string" === $.type(this.settings.maxRowHeight)) this.settings.maxRowHeight.match(/^[0-9]+%$/) ? (t.value = parseFloat(this.settings.maxRowHeight.match(/^([0-9]+)%$/)[1]) / 100, t.isPercentage = !1) : (t.value = parseFloat(this.settings.maxRowHeight), t.isPercentage = !0);
            else {
                if ("number" !== $.type(this.settings.maxRowHeight)) throw "maxRowHeight must be a number or a percentage";
                t.value = this.settings.maxRowHeight, t.isPercentage = !1
            }
            if (isNaN(t.value)) throw "invalid number for maxRowHeight";
            return t.isPercentage ? t.value < 100 && (t.value = 100) : t.value > 0 && t.value < this.settings.rowHeight && (t.value = this.settings.rowHeight), t
        }, e.prototype.checkSettings = function() {
            this.checkSizeRangesSuffixes(), this.checkOrConvertNumber(this.settings, "rowHeight"), this.checkOrConvertNumber(this.settings, "margins"), this.checkOrConvertNumber(this.settings, "border");
            var t = ["justify", "nojustify", "left", "center", "right", "hide"];
            if (-1 === t.indexOf(this.settings.lastRow)) throw "lastRow must be one of: " + t.join(", ");
            if (this.checkOrConvertNumber(this.settings, "justifyThreshold"), this.settings.justifyThreshold < 0 || this.settings.justifyThreshold > 1) throw "justifyThreshold must be in the interval [0,1]";
            if ("boolean" !== $.type(this.settings.cssAnimation)) throw "cssAnimation must be a boolean";
            if ("boolean" !== $.type(this.settings.captions)) throw "captions must be a boolean";
            if (this.checkOrConvertNumber(this.settings.captionSettings, "animationDuration"), this.checkOrConvertNumber(this.settings.captionSettings, "visibleOpacity"), this.settings.captionSettings.visibleOpacity < 0 || this.settings.captionSettings.visibleOpacity > 1) throw "captionSettings.visibleOpacity must be in the interval [0, 1]";
            if (this.checkOrConvertNumber(this.settings.captionSettings, "nonVisibleOpacity"), this.settings.captionSettings.nonVisibleOpacity < 0 || this.settings.captionSettings.nonVisibleOpacity > 1) throw "captionSettings.nonVisibleOpacity must be in the interval [0, 1]";
            if ("boolean" !== $.type(this.settings.fixedHeight)) throw "fixedHeight must be a boolean";
            if (this.checkOrConvertNumber(this.settings, "imagesAnimationDuration"), this.checkOrConvertNumber(this.settings, "refreshTime"), this.checkOrConvertNumber(this.settings, "refreshSensitivity"), "boolean" !== $.type(this.settings.randomize)) throw "randomize must be a boolean";
            if ("string" !== $.type(this.settings.selector)) throw "selector must be a string";
            if (this.settings.sort !== !1 && !$.isFunction(this.settings.sort)) throw "sort must be false or a comparison function";
            if (this.settings.filter !== !1 && !$.isFunction(this.settings.filter) && "string" !== $.type(this.settings.filter)) throw "filter must be false, a string or a filter function"
        }, e.prototype.retrieveSuffixRanges = function() {
            var t = [];
            for (var e in this.settings.sizeRangeSuffixes) this.settings.sizeRangeSuffixes.hasOwnProperty(e) && t.push(parseInt(e, 10));
            return t.sort(function(t, e) {
                return t > e ? 1 : e > t ? -1 : 0
            }), t
        }, e.prototype.updateSettings = function(t) {
            this.settings = $.extend({}, this.settings, t), this.checkSettings(), this.border = this.settings.border >= 0 ? this.settings.border : this.settings.margins, this.maxRowHeight = this.retrieveMaxRowHeight(), this.suffixRanges = this.retrieveSuffixRanges()
        }, $.fn.justifiedGallery = function(t) {
            return this.each(function(i, n) {
                var o = $(n);
                o.addClass("justified-gallery");
                var r = o.data("jg.controller");
                if ("undefined" == typeof r) {
                    if ("undefined" != typeof t && null !== t && "object" !== $.type(t)) {
                        if ("destroy" === t) return;
                        throw "The argument must be an object"
                    }
                    r = new e(o, $.extend({}, $.fn.justifiedGallery.defaults, t)), o.data("jg.controller", r)
                } else if ("norewind" === t);
                else {
                    if ("destroy" === t) return void r.destroy();
                    r.updateSettings(t), r.rewind()
                }
                r.updateEntries("norewind" === t) && r.init()
            })
        }, $.fn.justifiedGallery.defaults = {
            sizeRangeSuffixes: {},
            thumbnailPath: void 0,
            rowHeight: 120,
            maxRowHeight: -1,
            margins: 1,
            border: -1,
            lastRow: "nojustify",
            justifyThreshold: .9,
            fixedHeight: !1,
            waitThumbnailsLoad: !0,
            captions: !0,
            cssAnimation: !1,
            imagesAnimationDuration: 500,
            captionSettings: {
                animationDuration: 500,
                visibleOpacity: .7,
                nonVisibleOpacity: 0
            },
            rel: null,
            target: null,
            extension: /\.[^.\\/]+$/,
            refreshTime: 200,
            refreshSensitivity: 0,
            randomize: !1,
            sort: !1,
            filter: !1,
            selector: "> a, > div:not(.spinner)"
        }
    }(jQuery),
    function($) {
        var t = $.fn.justifiedGallery,
            e = {};
        $.fn.enviraJustifiedGallery = function() {
            var i = t.apply(this, arguments);
            return e = i.data("jg.controller"), void 0 !== e ? (e.displayEntryCaption = function(t) {
                var e = this.imgFromEntry(t);
                if (null !== e && this.settings.captions) {
                    var i = this.captionFromEntry(t);
                    if (null === i) {
                        var n = e.data("envira-caption");
                        void 0 !== n && "string" == typeof n && (n = n.replace("<", "&lt;")), this.isValidCaption(n) && (i = $('<div class="caption">' + n + "</div>"), t.append(i), t.data("jg.createdCaption", !0))
                    }
                    null !== i && (this.settings.cssAnimation || i.stop().fadeTo(0, this.settings.captionSettings.nonVisibleOpacity), this.addCaptionEventsHandlers(t))
                } else this.removeCaptionEventsHandlers(t)
            }, e) : void 0
        }
    }(jQuery),
    /*!
     * vintageJS
     * Add a retro/vintage effect to images using the HTML5 canvas element
     * 
     * @license Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php) and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
     * @author Robert Fleischmann <rendro87@gmail.com>
     * @version 1.1.5
     */
    ! function(t, e) {
        "function" == typeof define && define.amd ? define("vintagejs", ["jquery"], function(i) {
            return t.VintageJS = e(i)
        }) : "object" == typeof exports ? module.exports = e(require("jquery")) : t.VintageJS = e(jQuery)
    }(this, function(t) {
        var e = function(t, e, i) {
            if (0 == t instanceof HTMLImageElement) throw "The element (1st parameter) must be an instance of HTMLImageElement";
            var n, o, r, s, a, h, l, u, d, c = new Image,
                f = new Image,
                g = document.createElement("canvas"),
                p = g.getContext("2d"),
                m = {
                    onStart: function() {},
                    onStop: function() {},
                    onError: function() {},
                    mime: "image/jpeg"
                },
                v = {
                    curves: !1,
                    screen: !1,
                    desaturate: !1,
                    vignette: !1,
                    lighten: !1,
                    noise: !1,
                    viewFinder: !1,
                    sepia: !1,
                    brightness: !1,
                    contrast: !1
                };
            c.onerror = m.onError, c.onload = function() {
                h = g.width = c.width, l = g.height = c.height, n()
            }, f.onerror = m.onError, f.onload = function() {
                p.clearRect(0, 0, h, l), p.drawImage(f, 0, 0, h, l), (window.vjsImageCache || (window.vjsImageCache = {}))[d] = p.getImageData(0, 0, h, l).data, n()
            }, o = function(t) {
                m.onStart(), u = {};
                for (var e in v) u[e] = t[e] || v[e];
                s = [], u.viewFinder && s.push(u.viewFinder), c.src == a ? n() : c.src = a
            }, n = function() {
                if (0 === s.length) return r();
                var t = s.pop();
                return d = [h, l, t].join("-"), window.vjsImageCache && window.vjsImageCache[d] ? n() : void(f.src = t)
            }, r = function() {
                var e, i, n;
                p.clearRect(0, 0, h, l), p.drawImage(c, 0, 0, h, l), (u.vignette || u.lighten) && (e = Math.sqrt(Math.pow(h / 2, 2) + Math.pow(l / 2, 2))), u.vignette && (p.globalCompositeOperation = "source-over", i = p.createRadialGradient(h / 2, l / 2, 0, h / 2, l / 2, e), i.addColorStop(0, "rgba(0,0,0,0)"), i.addColorStop(.5, "rgba(0,0,0,0)"), i.addColorStop(1, ["rgba(0,0,0,", u.vignette, ")"].join("")), p.fillStyle = i, p.fillRect(0, 0, h, l)), u.lighten && (p.globalCompositeOperation = "lighter", i = p.createRadialGradient(h / 2, l / 2, 0, h / 2, l / 2, e), i.addColorStop(0, ["rgba(255,255,255,", u.lighten, ")"].join("")), i.addColorStop(.5, "rgba(255,255,255,0)"), i.addColorStop(1, "rgba(0,0,0,0)"), p.fillStyle = i, p.fillRect(0, 0, h, l)), n = p.getImageData(0, 0, h, l);
                var o, r, s, a, d, f, g, v, y, w = n.data;
                u.contrast && (y = 259 * (u.contrast + 255) / (255 * (259 - u.contrast))), u.viewFinder && (v = window.vjsImageCache[[h, l, u.viewFinder].join("-")]);
                for (var b = h * l; b >= 0; --b)
                    for (o = b << 2, u.curves && (w[o] = u.curves.r[w[o]], w[o + 1] = u.curves.g[w[o + 1]], w[o + 2] = u.curves.b[w[o + 2]]), u.contrast && (w[o] = y * (w[o] - 128) + 128, w[o + 1] = y * (w[o + 1] - 128) + 128, w[o + 2] = y * (w[o + 2] - 128) + 128), u.brightness && (w[o] += u.brightness, w[o + 1] += u.brightness, w[o + 2] += u.brightness), u.screen && (w[o] = 255 - (255 - w[o]) * (255 - u.screen.r * u.screen.a) / 255, w[o + 1] = 255 - (255 - w[o + 1]) * (255 - u.screen.g * u.screen.a) / 255, w[o + 2] = 255 - (255 - w[o + 2]) * (255 - u.screen.b * u.screen.a) / 255), u.noise && (g = u.noise - Math.random() * u.noise / 2, w[o] += g, w[o + 1] += g, w[o + 2] += g), u.viewFinder && (w[o] = w[o] * v[o] / 255, w[o + 1] = w[o + 1] * v[o + 1] / 255, w[o + 2] = w[o + 2] * v[o + 2] / 255), u.sepia && (s = w[o], a = w[o + 1], d = w[o + 2], w[o] = .393 * s + .769 * a + .189 * d, w[o + 1] = .349 * s + .686 * a + .168 * d, w[o + 2] = .272 * s + .534 * a + .131 * d), u.desaturate && (f = (w[o] + w[o + 1] + w[o + 2]) / 3, w[o] += (f - w[o]) * u.desaturate, w[o + 1] += (f - w[o + 1]) * u.desaturate, w[o + 2] += (f - w[o + 2]) * u.desaturate), r = 2; r >= 0; --r) w[o + r] = ~~(w[o + r] > 255 ? 255 : w[o + r] < 0 ? 0 : w[o + r]);
                p.putImageData(n, 0, 0), t.src = p.canvas.toDataURL(m.mime), m.onStop()
            }, a = t.src, e = e || {};
            for (var y in m) m[y] = e[y] || m[y];
            return i && o(i), {
                apply: function() {
                    a = t.src
                },
                reset: function() {
                    t.src = a
                },
                vintage: o
            }
        };
        return t.fn.vintage = function(i, n) {
            return this.each(function() {
                t.data(this, "vintageJS") || t.data(this, "vintageJS", new e(this, i, n))
            })
        }, e
    });
var mul_table = [1, 57, 41, 21, 203, 34, 97, 73, 227, 91, 149, 62, 105, 45, 39, 137, 241, 107, 3, 173, 39, 71, 65, 238, 219, 101, 187, 87, 81, 151, 141, 133, 249, 117, 221, 209, 197, 187, 177, 169, 5, 153, 73, 139, 133, 127, 243, 233, 223, 107, 103, 99, 191, 23, 177, 171, 165, 159, 77, 149, 9, 139, 135, 131, 253, 245, 119, 231, 224, 109, 211, 103, 25, 195, 189, 23, 45, 175, 171, 83, 81, 79, 155, 151, 147, 9, 141, 137, 67, 131, 129, 251, 123, 30, 235, 115, 113, 221, 217, 53, 13, 51, 50, 49, 193, 189, 185, 91, 179, 175, 43, 169, 83, 163, 5, 79, 155, 19, 75, 147, 145, 143, 35, 69, 17, 67, 33, 65, 255, 251, 247, 243, 239, 59, 29, 229, 113, 111, 219, 27, 213, 105, 207, 51, 201, 199, 49, 193, 191, 47, 93, 183, 181, 179, 11, 87, 43, 85, 167, 165, 163, 161, 159, 157, 155, 77, 19, 75, 37, 73, 145, 143, 141, 35, 138, 137, 135, 67, 33, 131, 129, 255, 63, 250, 247, 61, 121, 239, 237, 117, 29, 229, 227, 225, 111, 55, 109, 216, 213, 211, 209, 207, 205, 203, 201, 199, 197, 195, 193, 48, 190, 47, 93, 185, 183, 181, 179, 178, 176, 175, 173, 171, 85, 21, 167, 165, 41, 163, 161, 5, 79, 157, 78, 154, 153, 19, 75, 149, 74, 147, 73, 144, 143, 71, 141, 140, 139, 137, 17, 135, 134, 133, 66, 131, 65, 129, 1],
    shg_table = [0, 9, 10, 10, 14, 12, 14, 14, 16, 15, 16, 15, 16, 15, 15, 17, 18, 17, 12, 18, 16, 17, 17, 19, 19, 18, 19, 18, 18, 19, 19, 19, 20, 19, 20, 20, 20, 20, 20, 20, 15, 20, 19, 20, 20, 20, 21, 21, 21, 20, 20, 20, 21, 18, 21, 21, 21, 21, 20, 21, 17, 21, 21, 21, 22, 22, 21, 22, 22, 21, 22, 21, 19, 22, 22, 19, 20, 22, 22, 21, 21, 21, 22, 22, 22, 18, 22, 22, 21, 22, 22, 23, 22, 20, 23, 22, 22, 23, 23, 21, 19, 21, 21, 21, 23, 23, 23, 22, 23, 23, 21, 23, 22, 23, 18, 22, 23, 20, 22, 23, 23, 23, 21, 22, 20, 22, 21, 22, 24, 24, 24, 24, 24, 22, 21, 24, 23, 23, 24, 21, 24, 23, 24, 22, 24, 24, 22, 24, 24, 22, 23, 24, 24, 24, 20, 23, 22, 23, 24, 24, 24, 24, 24, 24, 24, 23, 21, 23, 22, 23, 24, 24, 24, 22, 24, 24, 24, 23, 22, 24, 24, 25, 23, 25, 25, 23, 24, 25, 25, 24, 22, 25, 25, 25, 24, 23, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 23, 25, 23, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 24, 22, 25, 25, 23, 25, 25, 20, 24, 25, 24, 25, 25, 22, 24, 25, 24, 25, 24, 25, 25, 24, 25, 25, 25, 25, 22, 25, 25, 25, 24, 25, 24, 25, 18];
if (jQuery(document).ready(function($) {
        var t = "ontouchstart" in document.documentElement;
        t && $("body").addClass("envira-touch")
    }), function(t) {
        "function" == typeof define && define.amd && define.amd.jQuery ? define(["jquery"], t) : t(jQuery)
    }(function($) {
        "use strict";

        function t(t) {
            return !t || void 0 !== t.allowPageScroll || void 0 === t.swipe && void 0 === t.swipeStatus || (t.allowPageScroll = h), void 0 !== t.click && void 0 === t.tap && (t.tap = t.click), t || (t = {}), t = $.extend({}, $.fn.swipe.defaults, t), this.each(function() {
                var i = $(this),
                    n = i.data(R);
                n || (n = new e(this, t), i.data(R, n))
            })
        }

        function e(t, e) {
            function p(t) {
                if (!(lt() || $(t.target).closest(e.excludedElements, Qt).length > 0)) {
                    var i = t.originalEvent ? t.originalEvent : t,
                        n, o = E ? i.touches[0] : i;
                    return $t = b, E ? Ut = i.touches.length : t.preventDefault(), Mt = 0, Ht = null, Nt = null, kt = 0, Wt = 0, Ft = 0, Bt = 1, Pt = 0, Yt = gt(), qt = vt(), at(), !E || Ut === e.fingers || e.fingers === y || N() ? (dt(0, o), Gt = zt(), 2 == Ut && (dt(1, i.touches[1]), Wt = Ft = bt(Yt[0].start, Yt[1].start)), (e.swipeStatus || e.pinchStatus) && (n = D(i, $t))) : n = !1, n === !1 ? ($t = S, D(i, $t), n) : (e.hold && (te = setTimeout($.proxy(function() {
                        Qt.trigger("hold", [i.target]), e.hold && (n = e.hold.call(Qt, i, i.target))
                    }, this), e.longTapThreshold)), ut(!0), null)
                }
            }

            function T(t) {
                var i = t.originalEvent ? t.originalEvent : t;
                if ($t !== I && $t !== S && !ht()) {
                    var n, o = E ? i.touches[0] : i,
                        r = ct(o);
                    if (Vt = zt(), E && (Ut = i.touches.length), e.hold && clearTimeout(te), $t = x, 2 == Ut && (0 == Wt ? (dt(1, i.touches[1]), Wt = Ft = bt(Yt[0].start, Yt[1].start)) : (ct(i.touches[1]), Ft = bt(Yt[0].end, Yt[1].end), Nt = It(Yt[0].end, Yt[1].end)), Bt = xt(Wt, Ft), Pt = Math.abs(Wt - Ft)), Ut === e.fingers || e.fingers === y || !E || N()) {
                        if (Ht = _t(r.start, r.end), B(t, Ht), Mt = St(r.start, r.end), kt = wt(), pt(Ht, Mt), (e.swipeStatus || e.pinchStatus) && (n = D(i, $t)), !e.triggerOnTouchEnd || e.triggerOnTouchLeave) {
                            var s = !0;
                            if (e.triggerOnTouchLeave) {
                                var a = Rt(this);
                                s = Tt(r.end, a)
                            }!e.triggerOnTouchEnd && s ? $t = A(x) : e.triggerOnTouchLeave && !s && ($t = A(I)), ($t == S || $t == I) && D(i, $t)
                        }
                    } else $t = S, D(i, $t);
                    n === !1 && ($t = S, D(i, $t))
                }
            }

            function C(t) {
                var i = t.originalEvent;
                return E && i.touches.length > 0 ? (st(), !0) : (ht() && (Ut = Jt), Vt = zt(), kt = wt(), k() || !H() ? ($t = S, D(i, $t)) : e.triggerOnTouchEnd || 0 == e.triggerOnTouchEnd && $t === x ? (t.preventDefault(), $t = I, D(i, $t)) : !e.triggerOnTouchEnd && X() ? ($t = I, M(i, $t, c)) : $t === x && ($t = S, D(i, $t)), ut(!1), null)
            }

            function j() {
                Ut = 0, Vt = 0, Gt = 0, Wt = 0, Ft = 0, Bt = 1, at(), ut(!1)
            }

            function O(t) {
                var i = t.originalEvent;
                e.triggerOnTouchLeave && ($t = A(I), D(i, $t))
            }

            function L() {
                Qt.unbind(jt, p), Qt.unbind(Dt, j), Qt.unbind(Ot, T), Qt.unbind(Lt, C), At && Qt.unbind(At, O), ut(!1)
            }

            function A(t) {
                var i = t,
                    n = F(),
                    o = H(),
                    r = k();
                return !n || r ? i = S : !o || t != x || e.triggerOnTouchEnd && !e.triggerOnTouchLeave ? !o && t == I && e.triggerOnTouchLeave && (i = S) : i = I, i
            }

            function D(t, e) {
                var i = void 0;
                return Y() || U() ? i = M(t, e, u) : (q() || N()) && i !== !1 && (i = M(t, e, d)), ot() && i !== !1 ? i = M(t, e, f) : rt() && i !== !1 ? i = M(t, e, g) : nt() && i !== !1 && (i = M(t, e, c)), e === S && j(t), e === I && (E ? 0 == t.touches.length && j(t) : j(t)), i
            }

            function M(t, h, l) {
                var p = void 0;
                if (l == u) {
                    if (Qt.trigger("swipeStatus", [h, Ht || null, Mt || 0, kt || 0, Ut, Yt]), e.swipeStatus && (p = e.swipeStatus.call(Qt, t, h, Ht || null, Mt || 0, kt || 0, Ut, Yt), p === !1)) return !1;
                    if (h == I && Q()) {
                        if (Qt.trigger("swipe", [Ht, Mt, kt, Ut, Yt]), e.swipe && (p = e.swipe.call(Qt, t, Ht, Mt, kt, Ut, Yt), p === !1)) return !1;
                        switch (Ht) {
                            case i:
                                Qt.trigger("swipeLeft", [Ht, Mt, kt, Ut, Yt]), e.swipeLeft && (p = e.swipeLeft.call(Qt, t, Ht, Mt, kt, Ut, Yt));
                                break;
                            case n:
                                Qt.trigger("swipeRight", [Ht, Mt, kt, Ut, Yt]), e.swipeRight && (p = e.swipeRight.call(Qt, t, Ht, Mt, kt, Ut, Yt));
                                break;
                            case o:
                                Qt.trigger("swipeUp", [Ht, Mt, kt, Ut, Yt]), e.swipeUp && (p = e.swipeUp.call(Qt, t, Ht, Mt, kt, Ut, Yt));
                                break;
                            case r:
                                Qt.trigger("swipeDown", [Ht, Mt, kt, Ut, Yt]), e.swipeDown && (p = e.swipeDown.call(Qt, t, Ht, Mt, kt, Ut, Yt))
                        }
                    }
                }
                if (l == d) {
                    if (Qt.trigger("pinchStatus", [h, Nt || null, Pt || 0, kt || 0, Ut, Bt, Yt]), e.pinchStatus && (p = e.pinchStatus.call(Qt, t, h, Nt || null, Pt || 0, kt || 0, Ut, Bt, Yt), p === !1)) return !1;
                    if (h == I && P()) switch (Nt) {
                        case s:
                            Qt.trigger("pinchIn", [Nt || null, Pt || 0, kt || 0, Ut, Bt, Yt]), e.pinchIn && (p = e.pinchIn.call(Qt, t, Nt || null, Pt || 0, kt || 0, Ut, Bt, Yt));
                            break;
                        case a:
                            Qt.trigger("pinchOut", [Nt || null, Pt || 0, kt || 0, Ut, Bt, Yt]), e.pinchOut && (p = e.pinchOut.call(Qt, t, Nt || null, Pt || 0, kt || 0, Ut, Bt, Yt))
                    }
                }
                return l == c ? (h === S || h === I) && (clearTimeout(Kt), clearTimeout(te), J() && !tt() ? (Zt = zt(), Kt = setTimeout($.proxy(function() {
                    Zt = null, Qt.trigger("tap", [t.target]), e.tap && (p = e.tap.call(Qt, t, t.target))
                }, this), e.doubleTapThreshold)) : (Zt = null, Qt.trigger("tap", [t.target]), e.tap && (p = e.tap.call(Qt, t, t.target)))) : l == f ? (h === S || h === I) && (clearTimeout(Kt), Zt = null, Qt.trigger("doubletap", [t.target]), e.doubleTap && (p = e.doubleTap.call(Qt, t, t.target))) : l == g && (h === S || h === I) && (clearTimeout(Kt), Zt = null, Qt.trigger("longtap", [t.target]), e.longTap && (p = e.longTap.call(Qt, t, t.target))), p
            }

            function H() {
                var t = !0;
                return null !== e.threshold && (t = Mt >= e.threshold), t
            }

            function k() {
                var t = !1;
                return null !== e.cancelThreshold && null !== Ht && (t = mt(Ht) - Mt >= e.cancelThreshold), t
            }

            function W() {
                return null !== e.pinchThreshold ? Pt >= e.pinchThreshold : !0
            }

            function F() {
                var t;
                return t = e.maxTimeThreshold && kt >= e.maxTimeThreshold ? !1 : !0
            }

            function B(t, s) {
                if (e.allowPageScroll === h || N()) t.preventDefault();
                else {
                    var a = e.allowPageScroll === l;
                    switch (s) {
                        case i:
                            (e.swipeLeft && a || !a && e.allowPageScroll != m) && t.preventDefault();
                            break;
                        case n:
                            (e.swipeRight && a || !a && e.allowPageScroll != m) && t.preventDefault();
                            break;
                        case o:
                            (e.swipeUp && a || !a && e.allowPageScroll != v) && t.preventDefault();
                            break;
                        case r:
                            (e.swipeDown && a || !a && e.allowPageScroll != v) && t.preventDefault()
                    }
                }
            }

            function P() {
                var t = G(),
                    e = V(),
                    i = W();
                return t && e && i
            }

            function N() {
                return !!(e.pinchStatus || e.pinchIn || e.pinchOut)
            }

            function q() {
                return !(!P() || !N())
            }

            function Q() {
                var t = F(),
                    e = H(),
                    i = G(),
                    n = V(),
                    o = k(),
                    r = !o && n && i && e && t;
                return r
            }

            function U() {
                return !!(e.swipe || e.swipeStatus || e.swipeLeft || e.swipeRight || e.swipeUp || e.swipeDown)
            }

            function Y() {
                return !(!Q() || !U())
            }

            function G() {
                return Ut === e.fingers || e.fingers === y || !E
            }

            function V() {
                return 0 !== Yt[0].end.x
            }

            function X() {
                return !!e.tap
            }

            function J() {
                return !!e.doubleTap
            }

            function Z() {
                return !!e.longTap
            }

            function K() {
                if (null == Zt) return !1;
                var t = zt();
                return J() && t - Zt <= e.doubleTapThreshold
            }

            function tt() {
                return K()
            }

            function et() {
                return (1 === Ut || !E) && (isNaN(Mt) || Mt < e.threshold)
            }

            function it() {
                return kt > e.longTapThreshold && w > Mt
            }

            function nt() {
                return !(!et() || !X())
            }

            function ot() {
                return !(!K() || !J())
            }

            function rt() {
                return !(!it() || !Z())
            }

            function st() {
                Xt = zt(), Jt = event.touches.length + 1
            }

            function at() {
                Xt = 0, Jt = 0
            }

            function ht() {
                var t = !1;
                if (Xt) {
                    var i = zt() - Xt;
                    i <= e.fingerReleaseThreshold && (t = !0)
                }
                return t
            }

            function lt() {
                return !(Qt.data(R + "_intouch") !== !0)
            }

            function ut(t) {
                t === !0 ? (Qt.bind(Ot, T), Qt.bind(Lt, C), At && Qt.bind(At, O)) : (Qt.unbind(Ot, T, !1), Qt.unbind(Lt, C, !1), At && Qt.unbind(At, O, !1)), Qt.data(R + "_intouch", t === !0)
            }

            function dt(t, e) {
                var i = void 0 !== e.identifier ? e.identifier : 0;
                return Yt[t].identifier = i, Yt[t].start.x = Yt[t].end.x = e.pageX || e.clientX, Yt[t].start.y = Yt[t].end.y = e.pageY || e.clientY, Yt[t]
            }

            function ct(t) {
                var e = void 0 !== t.identifier ? t.identifier : 0,
                    i = ft(e);
                return i.end.x = t.pageX || t.clientX, i.end.y = t.pageY || t.clientY, i
            }

            function ft(t) {
                for (var e = 0; e < Yt.length; e++)
                    if (Yt[e].identifier == t) return Yt[e]
            }

            function gt() {
                for (var t = [], e = 0; 5 >= e; e++) t.push({
                    start: {
                        x: 0,
                        y: 0
                    },
                    end: {
                        x: 0,
                        y: 0
                    },
                    identifier: 0
                });
                return t
            }

            function pt(t, e) {
                e = Math.max(e, mt(t)), qt[t].distance = e
            }

            function mt(t) {
                return qt[t] ? qt[t].distance : void 0
            }

            function vt() {
                var t = {};
                return t[i] = yt(i), t[n] = yt(n), t[o] = yt(o), t[r] = yt(r), t
            }

            function yt(t) {
                return {
                    direction: t,
                    distance: 0
                }
            }

            function wt() {
                return Vt - Gt
            }

            function bt(t, e) {
                var i = Math.abs(t.x - e.x),
                    n = Math.abs(t.y - e.y);
                return Math.round(Math.sqrt(i * i + n * n))
            }

            function xt(t, e) {
                var i = e / t * 1;
                return i.toFixed(2)
            }

            function It() {
                return 1 > Bt ? a : s
            }

            function St(t, e) {
                return Math.round(Math.sqrt(Math.pow(e.x - t.x, 2) + Math.pow(e.y - t.y, 2)))
            }

            function Et(t, e) {
                var i = t.x - e.x,
                    n = e.y - t.y,
                    o = Math.atan2(n, i),
                    r = Math.round(180 * o / Math.PI);
                return 0 > r && (r = 360 - Math.abs(r)), r
            }

            function _t(t, e) {
                var s = Et(t, e);
                return 45 >= s && s >= 0 ? i : 360 >= s && s >= 315 ? i : s >= 135 && 225 >= s ? n : s > 45 && 135 > s ? r : o
            }

            function zt() {
                var t = new Date;
                return t.getTime()
            }

            function Rt(t) {
                t = $(t);
                var e = t.offset(),
                    i = {
                        left: e.left,
                        right: e.left + t.outerWidth(),
                        top: e.top,
                        bottom: e.top + t.outerHeight()
                    };
                return i
            }

            function Tt(t, e) {
                return t.x > e.left && t.x < e.right && t.y > e.top && t.y < e.bottom
            }
            var Ct = E || z || !e.fallbackToMouseEvents,
                jt = Ct ? z ? _ ? "MSPointerDown" : "pointerdown" : "touchstart" : "mousedown",
                Ot = Ct ? z ? _ ? "MSPointerMove" : "pointermove" : "touchmove" : "mousemove",
                Lt = Ct ? z ? _ ? "MSPointerUp" : "pointerup" : "touchend" : "mouseup",
                At = Ct ? null : "mouseleave",
                Dt = z ? _ ? "MSPointerCancel" : "pointercancel" : "touchcancel",
                Mt = 0,
                Ht = null,
                kt = 0,
                Wt = 0,
                Ft = 0,
                Bt = 1,
                Pt = 0,
                Nt = 0,
                qt = null,
                Qt = $(t),
                $t = "start",
                Ut = 0,
                Yt = null,
                Gt = 0,
                Vt = 0,
                Xt = 0,
                Jt = 0,
                Zt = 0,
                Kt = null,
                te = null;
            try {
                Qt.bind(jt, p), Qt.bind(Dt, j)
            } catch (ee) {
                $.error("events not supported " + jt + "," + Dt + " on jQuery.swipe")
            }
            this.enable = function() {
                return Qt.bind(jt, p), Qt.bind(Dt, j), Qt
            }, this.disable = function() {
                return L(), Qt
            }, this.destroy = function() {
                L(), Qt.data(R, null), Qt = null
            }, this.option = function(t, i) {
                if (void 0 !== e[t]) {
                    if (void 0 === i) return e[t];
                    e[t] = i
                } else $.error("Option " + t + " does not exist on jQuery.swipe.options");
                return null
            }
        }
        var i = "left",
            n = "right",
            o = "up",
            r = "down",
            s = "in",
            a = "out",
            h = "none",
            l = "auto",
            u = "swipe",
            d = "pinch",
            c = "tap",
            f = "doubletap",
            g = "longtap",
            p = "hold",
            m = "horizontal",
            v = "vertical",
            y = "all",
            w = 10,
            b = "start",
            x = "move",
            I = "end",
            S = "cancel",
            E = "ontouchstart" in window,
            _ = window.navigator.msPointerEnabled && !window.navigator.pointerEnabled,
            z = window.navigator.pointerEnabled || window.navigator.msPointerEnabled,
            R = "TouchSwipe",
            T = {
                fingers: 1,
                threshold: 75,
                cancelThreshold: null,
                pinchThreshold: 20,
                maxTimeThreshold: null,
                fingerReleaseThreshold: 250,
                longTapThreshold: 500,
                doubleTapThreshold: 200,
                swipe: null,
                swipeLeft: null,
                swipeRight: null,
                swipeUp: null,
                swipeDown: null,
                swipeStatus: null,
                pinchIn: null,
                pinchOut: null,
                pinchStatus: null,
                click: null,
                tap: null,
                doubleTap: null,
                longTap: null,
                hold: null,
                triggerOnTouchEnd: !0,
                triggerOnTouchLeave: !1,
                allowPageScroll: "auto",
                fallbackToMouseEvents: !0,
                excludedElements: "label, button, input, select, textarea, a, .noSwipe"
            };
        $.fn.swipe = function(e) {
            var i = $(this),
                n = i.data(R);
            if (n && "string" == typeof e) {
                if (n[e]) return n[e].apply(this, Array.prototype.slice.call(arguments, 1));
                $.error("Method " + e + " does not exist on jQuery.swipe")
            } else if (!(n || "object" != typeof e && e)) return t.apply(this, arguments);
            return i
        }, $.fn.swipe.defaults = T, $.fn.swipe.phases = {
            PHASE_START: b,
            PHASE_MOVE: x,
            PHASE_END: I,
            PHASE_CANCEL: S
        }, $.fn.swipe.directions = {
            LEFT: i,
            RIGHT: n,
            UP: o,
            DOWN: r,
            IN: s,
            OUT: a
        }, $.fn.swipe.pageScroll = {
            NONE: h,
            HORIZONTAL: m,
            VERTICAL: v,
            AUTO: l
        }, $.fn.swipe.fingers = {
            ONE: 1,
            TWO: 2,
            THREE: 3,
            ALL: y
        }
    }), function(t) {
        "function" == typeof define && define.amd ? define(["jquery"], t) : "object" == typeof exports ? module.exports = t : t(jQuery)
    }(function($) {
        function t(t) {
            var n = t || window.event,
                o = r.call(arguments, 1),
                h = 0,
                u = 0,
                d = 0,
                c = 0,
                f = 0,
                g = 0;
            if (t = $.event.fix(n), t.type = "mousewheel", "detail" in n && (d = -1 * n.detail), "wheelDelta" in n && (d = n.wheelDelta), "wheelDeltaY" in n && (d = n.wheelDeltaY), "wheelDeltaX" in n && (u = -1 * n.wheelDeltaX), "axis" in n && n.axis === n.HORIZONTAL_AXIS && (u = -1 * d, d = 0), h = 0 === d ? u : d, "deltaY" in n && (d = -1 * n.deltaY, h = d), "deltaX" in n && (u = n.deltaX, 0 === d && (h = -1 * u)), 0 !== d || 0 !== u) {
                if (1 === n.deltaMode) {
                    var p = $.data(this, "mousewheel-line-height");
                    h *= p, d *= p, u *= p
                } else if (2 === n.deltaMode) {
                    var m = $.data(this, "mousewheel-page-height");
                    h *= m, d *= m, u *= m
                }
                if (c = Math.max(Math.abs(d), Math.abs(u)), (!a || a > c) && (a = c, i(n, c) && (a /= 40)), i(n, c) && (h /= 40, u /= 40, d /= 40), h = Math[h >= 1 ? "floor" : "ceil"](h / a), u = Math[u >= 1 ? "floor" : "ceil"](u / a), d = Math[d >= 1 ? "floor" : "ceil"](d / a), l.settings.normalizeOffset && this.getBoundingClientRect) {
                    var v = this.getBoundingClientRect();
                    f = t.clientX - v.left, g = t.clientY - v.top
                }
                return t.deltaX = u, t.deltaY = d, t.deltaFactor = a, t.offsetX = f, t.offsetY = g, t.deltaMode = 0, o.unshift(t, h, u, d), s && clearTimeout(s), s = setTimeout(e, 200), ($.event.dispatch || $.event.handle).apply(this, o)
            }
        }

        function e() {
            a = null
        }

        function i(t, e) {
            return l.settings.adjustOldDeltas && "mousewheel" === t.type && e % 120 === 0
        }
        var n = ["wheel", "mousewheel", "DOMMouseScroll", "MozMousePixelScroll"],
            o = "onwheel" in document || document.documentMode >= 9 ? ["wheel"] : ["mousewheel", "DomMouseScroll", "MozMousePixelScroll"],
            r = Array.prototype.slice,
            s, a;
        if ($.event.fixHooks)
            for (var h = n.length; h;) $.event.fixHooks[n[--h]] = $.event.mouseHooks;
        var l = $.event.special.mousewheel = {
            version: "3.1.12",
            setup: function() {
                if (this.addEventListener)
                    for (var e = o.length; e;) this.addEventListener(o[--e], t, !1);
                else this.onmousewheel = t;
                $.data(this, "mousewheel-line-height", l.getLineHeight(this)), $.data(this, "mousewheel-page-height", l.getPageHeight(this))
            },
            teardown: function() {
                if (this.removeEventListener)
                    for (var e = o.length; e;) this.removeEventListener(o[--e], t, !1);
                else this.onmousewheel = null;
                $.removeData(this, "mousewheel-line-height"), $.removeData(this, "mousewheel-page-height")
            },
            getLineHeight: function(t) {
                var e = $(t),
                    i = e["offsetParent" in $.fn ? "offsetParent" : "parent"]();
                return i.length || (i = $("body")), parseInt(i.css("fontSize"), 10) || parseInt(e.css("fontSize"), 10) || 16
            },
            getPageHeight: function(t) {
                return $(t).height()
            },
            settings: {
                adjustOldDeltas: !0,
                normalizeOffset: !0
            }
        };
        $.fn.extend({
            mousewheel: function(t) {
                return t ? this.bind("mousewheel", t) : this.trigger("mousewheel")
            },
            unmousewheel: function(t) {
                return this.unbind("mousewheel", t)
            }
        })
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("ev-emitter/ev-emitter", e) : "object" == typeof module && module.exports ? module.exports = e() : t.EvEmitter = e()
    }(this, function() {
        function t() {}
        var e = t.prototype;
        return e.on = function(t, e) {
            if (t && e) {
                var i = this._events = this._events || {},
                    n = i[t] = i[t] || [];
                return -1 == n.indexOf(e) && n.push(e), this
            }
        }, e.once = function(t, e) {
            if (t && e) {
                this.on(t, e);
                var i = this._onceEvents = this._onceEvents || {},
                    n = i[t] = i[t] || [];
                return n[e] = !0, this
            }
        }, e.off = function(t, e) {
            var i = this._events && this._events[t];
            if (i && i.length) {
                var n = i.indexOf(e);
                return -1 != n && i.splice(n, 1), this
            }
        }, e.emitEvent = function(t, e) {
            var i = this._events && this._events[t];
            if (i && i.length) {
                var n = 0,
                    o = i[n];
                e = e || [];
                for (var r = this._onceEvents && this._onceEvents[t]; o;) {
                    var s = r && r[o];
                    s && (this.off(t, o), delete r[o]), o.apply(this, e), n += s ? 0 : 1, o = i[n]
                }
                return this
            }
        }, t
    }), function(t, e) {
        "use strict";
        "function" == typeof define && define.amd ? define(["ev-emitter/ev-emitter"], function(i) {
            return e(t, i)
        }) : "object" == typeof module && module.exports ? module.exports = e(t, require("ev-emitter")) : t.enviraImagesLoaded = e(t, t.EvEmitter)
    }(window, function t(e, i) {
        function n(t, e) {
            for (var i in e) t[i] = e[i];
            return t
        }

        function o(t) {
            var e = [];
            if (Array.isArray(t)) e = t;
            else if ("number" == typeof t.length)
                for (var i = 0; i < t.length; i++) e.push(t[i]);
            else e.push(t);
            return e
        }

        function r(t, e, i) {
            return this instanceof r ? ("string" == typeof t && (t = document.querySelectorAll(t)), this.elements = o(t), this.options = n({}, this.options), "function" == typeof e ? i = e : n(this.options, e), i && this.on("always", i), this.getImages(), $ && (this.jqDeferred = new $.Deferred), void setTimeout(function() {
                this.check()
            }.bind(this))) : new r(t, e, i)
        }

        function s(t) {
            this.img = t
        }

        function a(t, e) {
            this.url = t, this.element = e, this.img = new Image
        }
        var $ = e.jQuery,
            h = e.console;
        r.prototype = Object.create(i.prototype), r.prototype.options = {}, r.prototype.getImages = function() {
            this.images = [], this.elements.forEach(this.addElementImages, this)
        }, r.prototype.addElementImages = function(t) {
            "IMG" == t.nodeName && this.addImage(t), this.options.background === !0 && this.addElementBackgroundImages(t);
            var e = t.nodeType;
            if (e && l[e]) {
                for (var i = t.querySelectorAll("img"), n = 0; n < i.length; n++) {
                    var o = i[n];
                    this.addImage(o)
                }
                if ("string" == typeof this.options.background) {
                    var r = t.querySelectorAll(this.options.background);
                    for (n = 0; n < r.length; n++) {
                        var s = r[n];
                        this.addElementBackgroundImages(s)
                    }
                }
            }
        };
        var l = {
            1: !0,
            9: !0,
            11: !0
        };
        return r.prototype.addElementBackgroundImages = function(t) {
            var e = getComputedStyle(t);
            if (e)
                for (var i = /url\((['"])?(.*?)\1\)/gi, n = i.exec(e.backgroundImage); null !== n;) {
                    var o = n && n[2];
                    o && this.addBackground(o, t), n = i.exec(e.backgroundImage)
                }
        }, r.prototype.addImage = function(t) {
            var e = new s(t);
            this.images.push(e)
        }, r.prototype.addBackground = function(t, e) {
            var i = new a(t, e);
            this.images.push(i)
        }, r.prototype.check = function() {
            function t(t, i, n) {
                setTimeout(function() {
                    e.progress(t, i, n)
                })
            }
            var e = this;
            return this.progressedCount = 0, this.hasAnyBroken = !1, this.images.length ? void this.images.forEach(function(e) {
                e.once("progress", t), e.check()
            }) : void this.complete()
        }, r.prototype.progress = function(t, e, i) {
            this.progressedCount++, this.hasAnyBroken = this.hasAnyBroken || !t.isLoaded, this.emitEvent("progress", [this, t, e]), this.jqDeferred && this.jqDeferred.notify && this.jqDeferred.notify(this, t), this.progressedCount == this.images.length && this.complete(), this.options.debug && h && h.log("progress: " + i, t, e)
        }, r.prototype.complete = function() {
            var t = this.hasAnyBroken ? "fail" : "done";
            if (this.isComplete = !0, this.emitEvent(t, [this]), this.emitEvent("always", [this]), this.jqDeferred) {
                var e = this.hasAnyBroken ? "reject" : "resolve";
                this.jqDeferred[e](this)
            }
        }, s.prototype = Object.create(i.prototype), s.prototype.check = function() {
            var t = this.getIsImageComplete();
            return t ? void this.confirm(0 !== this.img.naturalWidth, "naturalWidth") : (this.proxyImage = new Image, this.proxyImage.addEventListener("load", this), this.proxyImage.addEventListener("error", this), this.img.addEventListener("load", this), this.img.addEventListener("error", this), void(this.proxyImage.src = this.img.src))
        }, s.prototype.getIsImageComplete = function() {
            return this.img.complete && void 0 !== this.img.naturalWidth
        }, s.prototype.confirm = function(t, e) {
            this.isLoaded = t, this.emitEvent("progress", [this, this.img, e])
        }, s.prototype.handleEvent = function(t) {
            var e = "on" + t.type;
            this[e] && this[e](t)
        }, s.prototype.onload = function() {
            this.confirm(!0, "onload"), this.unbindEvents()
        }, s.prototype.onerror = function() {
            this.confirm(!1, "onerror"), this.unbindEvents()
        }, s.prototype.unbindEvents = function() {
            this.proxyImage.removeEventListener("load", this), this.proxyImage.removeEventListener("error", this), this.img.removeEventListener("load", this), this.img.removeEventListener("error", this)
        }, a.prototype = Object.create(s.prototype), a.prototype.check = function() {
            this.img.addEventListener("load", this), this.img.addEventListener("error", this), this.img.src = this.url;
            var t = this.getIsImageComplete();
            t && (this.confirm(0 !== this.img.naturalWidth, "naturalWidth"), this.unbindEvents())
        }, a.prototype.unbindEvents = function() {
            this.img.removeEventListener("load", this), this.img.removeEventListener("error", this)
        }, a.prototype.confirm = function(t, e) {
            this.isLoaded = t, this.emitEvent("progress", [this, this.element, e])
        }, r.makeJQueryPlugin = function(t) {
            t = t || e.jQuery, t && ($ = t, $.fn.enviraImagesLoaded = function(t, e) {
                var i = new r(this, t, e);
                return i.jqDeferred.promise($(this))
            })
        }, r.makeJQueryPlugin(), r
    }), function(t, e) {
        "use strict";
        "function" == typeof define && define.amd ? define("jquery-bridget/jquery-bridget", ["jquery"], function(i) {
            e(t, i)
        }) : "object" == typeof module && module.exports ? module.exports = e(t, require("jquery")) : t.jQueryBridget = e(t, t.jQuery)
    }(window, function e(t, i) {
        "use strict";

        function n(e, n, $) {
            function s(t, i, n) {
                var o, r = "$()." + e + '("' + i + '")';
                return t.each(function(t, s) {
                    var h = $.data(s, e);
                    if (!h) return void a(e + " not initialized. Cannot call methods, i.e. " + r);
                    var l = h[i];
                    if (!l || "_" == i.charAt(0)) return void a(r + " is not a valid method");
                    var u = l.apply(h, n);
                    o = void 0 === o ? u : o
                }), void 0 !== o ? o : t
            }

            function h(t, i) {
                t.each(function(t, o) {
                    var r = $.data(o, e);
                    r ? (r.option(i), r._init()) : (r = new n(o, i), $.data(o, e, r))
                })
            }
            $ = $ || i || t.jQuery, $ && (n.prototype.option || (n.prototype.option = function(t) {
                $.isPlainObject(t) && (this.options = $.extend(!0, this.options, t))
            }), $.fn[e] = function(t) {
                if ("string" == typeof t) {
                    var e = r.call(arguments, 1);
                    return s(this, t, e)
                }
                return h(this, t), this
            }, o($))
        }

        function o($) {
            !$ || $ && $.bridget || ($.bridget = n)
        }
        var r = Array.prototype.slice,
            s = t.console,
            a = "undefined" == typeof s ? function() {} : function(t) {
                s.error(t)
            };
        return o(i || t.jQuery), n
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("ev-emitter/ev-emitter", e) : "object" == typeof module && module.exports ? module.exports = e() : t.EvEmitter = e()
    }(this, function() {
        function t() {}
        var e = t.prototype;
        return e.on = function(t, e) {
            if (t && e) {
                var i = this._events = this._events || {},
                    n = i[t] = i[t] || [];
                return -1 == n.indexOf(e) && n.push(e), this
            }
        }, e.once = function(t, e) {
            if (t && e) {
                this.on(t, e);
                var i = this._onceEvents = this._onceEvents || {},
                    n = i[t] = i[t] || {};
                return n[e] = !0, this
            }
        }, e.off = function(t, e) {
            var i = this._events && this._events[t];
            if (i && i.length) {
                var n = i.indexOf(e);
                return -1 != n && i.splice(n, 1), this
            }
        }, e.emitEvent = function(t, e) {
            var i = this._events && this._events[t];
            if (i && i.length) {
                var n = 0,
                    o = i[n];
                e = e || [];
                for (var r = this._onceEvents && this._onceEvents[t]; o;) {
                    var s = r && r[o];
                    s && (this.off(t, o), delete r[o]), o.apply(this, e), n += s ? 0 : 1, o = i[n]
                }
                return this
            }
        }, t
    }), function(t, e) {
        "use strict";
        "function" == typeof define && define.amd ? define("get-size/get-size", [], function() {
            return e()
        }) : "object" == typeof module && module.exports ? module.exports = e() : t.getSize = e()
    }(window, function i() {
        "use strict";

        function t(t) {
            var e = parseFloat(t),
                i = -1 == t.indexOf("%") && !isNaN(e);
            return i && e
        }

        function e() {}

        function i() {
            for (var t = {
                    width: 0,
                    height: 0,
                    innerWidth: 0,
                    innerHeight: 0,
                    outerWidth: 0,
                    outerHeight: 0
                }, e = 0; h > e; e++) {
                var i = a[e];
                t[i] = 0
            }
            return t
        }

        function n(t) {
            var e = getComputedStyle(t);
            return e || s("Style returned " + e + ". Are you running this code in a hidden iframe on Firefox? See http://bit.ly/getsizebug1"), e
        }

        function o() {
            if (!l) {
                l = !0;
                var e = document.createElement("div");
                e.style.width = "200px", e.style.padding = "1px 2px 3px 4px", e.style.borderStyle = "solid", e.style.borderWidth = "1px 2px 3px 4px", e.style.boxSizing = "border-box";
                var i = document.body || document.documentElement;
                i.appendChild(e);
                var o = n(e);
                r.isBoxSizeOuter = u = 200 == t(o.width), i.removeChild(e)
            }
        }

        function r(e) {
            if (o(), "string" == typeof e && (e = document.querySelector(e)), e && "object" == typeof e && e.nodeType) {
                var r = n(e);
                if ("none" == r.display) return i();
                var s = {};
                s.width = e.offsetWidth, s.height = e.offsetHeight;
                for (var l = s.isBorderBox = "border-box" == r.boxSizing, d = 0; h > d; d++) {
                    var c = a[d],
                        f = r[c],
                        g = parseFloat(f);
                    s[c] = isNaN(g) ? 0 : g
                }
                var p = s.paddingLeft + s.paddingRight,
                    m = s.paddingTop + s.paddingBottom,
                    v = s.marginLeft + s.marginRight,
                    y = s.marginTop + s.marginBottom,
                    w = s.borderLeftWidth + s.borderRightWidth,
                    b = s.borderTopWidth + s.borderBottomWidth,
                    x = l && u,
                    I = t(r.width);
                I !== !1 && (s.width = I + (x ? 0 : p + w));
                var S = t(r.height);
                return S !== !1 && (s.height = S + (x ? 0 : m + b)), s.innerWidth = s.width - (p + w), s.innerHeight = s.height - (m + b), s.outerWidth = s.width + v, s.outerHeight = s.height + y, s
            }
        }
        var s = "undefined" == typeof console ? e : function(t) {
                console.error(t)
            },
            a = ["paddingLeft", "paddingRight", "paddingTop", "paddingBottom", "marginLeft", "marginRight", "marginTop", "marginBottom", "borderLeftWidth", "borderRightWidth", "borderTopWidth", "borderBottomWidth"],
            h = a.length,
            l = !1,
            u;
        return r
    }), function(t, e) {
        "use strict";
        "function" == typeof define && define.amd ? define("desandro-matches-selector/matches-selector", e) : "object" == typeof module && module.exports ? module.exports = e() : t.matchesSelector = e()
    }(window, function n() {
        "use strict";
        var t = function() {
            var t = Element.prototype;
            if (t.matches) return "matches";
            if (t.matchesSelector) return "matchesSelector";
            for (var e = ["webkit", "moz", "ms", "o"], i = 0; i < e.length; i++) {
                var n = e[i],
                    o = n + "MatchesSelector";
                if (t[o]) return o
            }
        }();
        return function e(i, n) {
            return i[t](n)
        }
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("fizzy-ui-utils/utils", ["desandro-matches-selector/matches-selector"], function(i) {
            return e(t, i)
        }) : "object" == typeof module && module.exports ? module.exports = e(t, require("desandro-matches-selector")) : t.fizzyUIUtils = e(t, t.matchesSelector)
    }(window, function o(t, e) {
        var i = {};
        i.extend = function(t, e) {
            for (var i in e) t[i] = e[i];
            return t
        }, i.modulo = function(t, e) {
            return (t % e + e) % e
        }, i.makeArray = function(t) {
            var e = [];
            if (Array.isArray(t)) e = t;
            else if (t && "number" == typeof t.length)
                for (var i = 0; i < t.length; i++) e.push(t[i]);
            else e.push(t);
            return e
        }, i.removeFrom = function(t, e) {
            var i = t.indexOf(e); - 1 != i && t.splice(i, 1)
        }, i.getParent = function(t, i) {
            for (; t != document.body;)
                if (t = t.parentNode, e(t, i)) return t
        }, i.getQueryElement = function(t) {
            return "string" == typeof t ? document.querySelector(t) : t
        }, i.handleEvent = function(t) {
            var e = "on" + t.type;
            this[e] && this[e](t)
        }, i.filterFindElements = function(t, n) {
            t = i.makeArray(t);
            var o = [];
            return t.forEach(function(t) {
                if (t instanceof HTMLElement) {
                    if (!n) return void o.push(t);
                    e(t, n) && o.push(t);
                    for (var i = t.querySelectorAll(n), r = 0; r < i.length; r++) o.push(i[r])
                }
            }), o
        }, i.debounceMethod = function(t, e, i) {
            var n = t.prototype[e],
                o = e + "Timeout";
            t.prototype[e] = function() {
                var t = this[o];
                t && clearTimeout(t);
                var e = arguments,
                    r = this;
                this[o] = setTimeout(function() {
                    n.apply(r, e), delete r[o]
                }, i || 100)
            }
        }, i.docReady = function(t) {
            "complete" == document.readyState ? t() : document.addEventListener("DOMContentLoaded", t)
        }, i.toDashed = function(t) {
            return t.replace(/(.)([A-Z])/g, function(t, e, i) {
                return e + "-" + i
            }).toLowerCase()
        };
        var n = t.console;
        return i.htmlInit = function(e, o) {
            i.docReady(function() {
                var r = i.toDashed(o),
                    s = "data-" + r,
                    a = document.querySelectorAll("[" + s + "]"),
                    h = document.querySelectorAll(".js-" + r),
                    l = i.makeArray(a).concat(i.makeArray(h)),
                    u = s + "-options",
                    d = t.jQuery;
                l.forEach(function(t) {
                    var i = t.getAttribute(s) || t.getAttribute(u),
                        r;
                    try {
                        r = i && JSON.parse(i)
                    } catch (a) {
                        return void(n && n.error("Error parsing " + s + " on " + t.className + ": " + a))
                    }
                    var h = new e(t, r);
                    d && d.data(t, o, h)
                })
            })
        }, i
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("outlayer/item", ["ev-emitter/ev-emitter", "get-size/get-size"], e) : "object" == typeof module && module.exports ? module.exports = e(require("ev-emitter"), require("get-size")) : (t.Outlayer = {}, t.Outlayer.Item = e(t.EvEmitter, t.getSize))
    }(window, function r(t, e) {
        "use strict";

        function i(t) {
            for (var e in t) return !1;
            return e = null, !0
        }

        function n(t, e) {
            t && (this.element = t, this.layout = e, this.position = {
                x: 0,
                y: 0
            }, this._create())
        }

        function o(t) {
            return t.replace(/([A-Z])/g, function(t) {
                return "-" + t.toLowerCase()
            })
        }
        var r = document.documentElement.style,
            s = "string" == typeof r.transition ? "transition" : "WebkitTransition",
            a = "string" == typeof r.transform ? "transform" : "WebkitTransform",
            h = {
                WebkitTransition: "webkitTransitionEnd",
                transition: "transitionend"
            }[s],
            l = {
                transform: a,
                transition: s,
                transitionDuration: s + "Duration",
                transitionProperty: s + "Property",
                transitionDelay: s + "Delay"
            },
            u = n.prototype = Object.create(t.prototype);
        u.constructor = n, u._create = function() {
            this._transn = {
                ingProperties: {},
                clean: {},
                onEnd: {}
            }, this.css({
                position: "absolute"
            })
        }, u.handleEvent = function(t) {
            var e = "on" + t.type;
            this[e] && this[e](t)
        }, u.getSize = function() {
            this.size = e(this.element)
        }, u.css = function(t) {
            var e = this.element.style;
            for (var i in t) {
                var n = l[i] || i;
                e[n] = t[i]
            }
        }, u.getPosition = function() {
            var t = getComputedStyle(this.element),
                e = this.layout._getOption("originLeft"),
                i = this.layout._getOption("originTop"),
                n = t[e ? "left" : "right"],
                o = t[i ? "top" : "bottom"],
                r = this.layout.size,
                s = -1 != n.indexOf("%") ? parseFloat(n) / 100 * r.width : parseInt(n, 10),
                a = -1 != o.indexOf("%") ? parseFloat(o) / 100 * r.height : parseInt(o, 10);
            s = isNaN(s) ? 0 : s, a = isNaN(a) ? 0 : a, s -= e ? r.paddingLeft : r.paddingRight, a -= i ? r.paddingTop : r.paddingBottom, this.position.x = s, this.position.y = a
        }, u.layoutPosition = function() {
            var t = this.layout.size,
                e = {},
                i = this.layout._getOption("originLeft"),
                n = this.layout._getOption("originTop"),
                o = i ? "paddingLeft" : "paddingRight",
                r = i ? "left" : "right",
                s = i ? "right" : "left",
                a = this.position.x + t[o];
            e[r] = this.getXValue(a), e[s] = "";
            var h = n ? "paddingTop" : "paddingBottom",
                l = n ? "top" : "bottom",
                u = n ? "bottom" : "top",
                d = this.position.y + t[h];
            e[l] = this.getYValue(d), e[u] = "", this.css(e), this.emitEvent("layout", [this])
        }, u.getXValue = function(t) {
            var e = this.layout._getOption("horizontal");
            return this.layout.options.percentPosition && !e ? t / this.layout.size.width * 100 + "%" : t + "px";
        }, u.getYValue = function(t) {
            var e = this.layout._getOption("horizontal");
            return this.layout.options.percentPosition && e ? t / this.layout.size.height * 100 + "%" : t + "px"
        }, u._transitionTo = function(t, e) {
            this.getPosition();
            var i = this.position.x,
                n = this.position.y,
                o = parseInt(t, 10),
                r = parseInt(e, 10),
                s = o === this.position.x && r === this.position.y;
            if (this.setPosition(t, e), s && !this.isTransitioning) return void this.layoutPosition();
            var a = t - i,
                h = e - n,
                l = {};
            l.transform = this.getTranslate(a, h), this.transition({
                to: l,
                onTransitionEnd: {
                    transform: this.layoutPosition
                },
                isCleaning: !0
            })
        }, u.getTranslate = function(t, e) {
            var i = this.layout._getOption("originLeft"),
                n = this.layout._getOption("originTop");
            return t = i ? t : -t, e = n ? e : -e, "translate3d(" + t + "px, " + e + "px, 0)"
        }, u.goTo = function(t, e) {
            this.setPosition(t, e), this.layoutPosition()
        }, u.moveTo = u._transitionTo, u.setPosition = function(t, e) {
            this.position.x = parseInt(t, 10), this.position.y = parseInt(e, 10)
        }, u._nonTransition = function(t) {
            this.css(t.to), t.isCleaning && this._removeStyles(t.to);
            for (var e in t.onTransitionEnd) t.onTransitionEnd[e].call(this)
        }, u.transition = function(t) {
            if (!parseFloat(this.layout.options.transitionDuration)) return void this._nonTransition(t);
            var e = this._transn;
            for (var i in t.onTransitionEnd) e.onEnd[i] = t.onTransitionEnd[i];
            for (i in t.to) e.ingProperties[i] = !0, t.isCleaning && (e.clean[i] = !0);
            if (t.from) {
                this.css(t.from);
                var n = this.element.offsetHeight;
                n = null
            }
            this.enableTransition(t.to), this.css(t.to), this.isTransitioning = !0
        };
        var d = "opacity," + o(a);
        u.enableTransition = function() {
            if (!this.isTransitioning) {
                var t = this.layout.options.transitionDuration;
                t = "number" == typeof t ? t + "ms" : t, this.css({
                    transitionProperty: d,
                    transitionDuration: t,
                    transitionDelay: this.staggerDelay || 0
                }), this.element.addEventListener(h, this, !1)
            }
        }, u.onwebkitTransitionEnd = function(t) {
            this.ontransitionend(t)
        }, u.onotransitionend = function(t) {
            this.ontransitionend(t)
        };
        var c = {
            "-webkit-transform": "transform"
        };
        u.ontransitionend = function(t) {
            if (t.target === this.element) {
                var e = this._transn,
                    n = c[t.propertyName] || t.propertyName;
                if (delete e.ingProperties[n], i(e.ingProperties) && this.disableTransition(), n in e.clean && (this.element.style[t.propertyName] = "", delete e.clean[n]), n in e.onEnd) {
                    var o = e.onEnd[n];
                    o.call(this), delete e.onEnd[n]
                }
                this.emitEvent("transitionEnd", [this])
            }
        }, u.disableTransition = function() {
            this.removeTransitionStyles(), this.element.removeEventListener(h, this, !1), this.isTransitioning = !1
        }, u._removeStyles = function(t) {
            var e = {};
            for (var i in t) e[i] = "";
            this.css(e)
        };
        var f = {
            transitionProperty: "",
            transitionDuration: "",
            transitionDelay: ""
        };
        return u.removeTransitionStyles = function() {
            this.css(f)
        }, u.stagger = function(t) {
            t = isNaN(t) ? 0 : t, this.staggerDelay = t + "ms"
        }, u.removeElem = function() {
            this.element.parentNode.removeChild(this.element), this.css({
                display: ""
            }), this.emitEvent("remove", [this])
        }, u.remove = function() {
            return s && parseFloat(this.layout.options.transitionDuration) ? (this.once("transitionEnd", function() {
                this.removeElem()
            }), void this.hide()) : void this.removeElem()
        }, u.reveal = function() {
            delete this.isHidden, this.css({
                display: ""
            });
            var t = this.layout.options,
                e = {},
                i = this.getHideRevealTransitionEndProperty("visibleStyle");
            e[i] = this.onRevealTransitionEnd, this.transition({
                from: t.hiddenStyle,
                to: t.visibleStyle,
                isCleaning: !0,
                onTransitionEnd: e
            })
        }, u.onRevealTransitionEnd = function() {
            this.isHidden || this.emitEvent("reveal")
        }, u.getHideRevealTransitionEndProperty = function(t) {
            var e = this.layout.options[t];
            if (e.opacity) return "opacity";
            for (var i in e) return i
        }, u.hide = function() {
            this.isHidden = !0, this.css({
                display: ""
            });
            var t = this.layout.options,
                e = {},
                i = this.getHideRevealTransitionEndProperty("hiddenStyle");
            e[i] = this.onHideTransitionEnd, this.transition({
                from: t.visibleStyle,
                to: t.hiddenStyle,
                isCleaning: !0,
                onTransitionEnd: e
            })
        }, u.onHideTransitionEnd = function() {
            this.isHidden && (this.css({
                display: "none"
            }), this.emitEvent("hide"))
        }, u.destroy = function() {
            this.css({
                position: "",
                left: "",
                right: "",
                top: "",
                bottom: "",
                transition: "",
                transform: ""
            })
        }, n
    }), function(t, e) {
        "use strict";
        "function" == typeof define && define.amd ? define("outlayer/outlayer", ["ev-emitter/ev-emitter", "get-size/get-size", "fizzy-ui-utils/utils", "./item"], function(i, n, o, r) {
            return e(t, i, n, o, r)
        }) : "object" == typeof module && module.exports ? module.exports = e(t, require("ev-emitter"), require("get-size"), require("fizzy-ui-utils"), require("./item")) : t.Outlayer = e(t, t.EvEmitter, t.getSize, t.fizzyUIUtils, t.Outlayer.Item)
    }(window, function s(t, e, i, n, o) {
        "use strict";

        function r(t, e) {
            var i = n.getQueryElement(t);
            if (!i) return void(h && h.error("Bad element for " + this.constructor.namespace + ": " + (i || t)));
            this.element = i, l && (this.$element = l(this.element)), this.options = n.extend({}, this.constructor.defaults), this.option(e);
            var o = ++d;
            this.element.outlayerGUID = o, c[o] = this, this._create();
            var r = this._getOption("initLayout");
            r && this.layout()
        }

        function s(t) {
            function e() {
                t.apply(this, arguments)
            }
            return e.prototype = Object.create(t.prototype), e.prototype.constructor = e, e
        }

        function a(t) {
            if ("number" == typeof t) return t;
            var e = t.match(/(^\d*\.?\d*)(\w*)/),
                i = e && e[1],
                n = e && e[2];
            if (!i.length) return 0;
            i = parseFloat(i);
            var o = g[n] || 1;
            return i * o
        }
        var h = t.console,
            l = t.jQuery,
            u = function() {},
            d = 0,
            c = {};
        r.namespace = "outlayer", r.Item = o, r.defaults = {
            containerStyle: {
                position: "relative"
            },
            initLayout: !0,
            originLeft: !0,
            originTop: !0,
            resize: !0,
            resizeContainer: !0,
            transitionDuration: "0.4s",
            hiddenStyle: {
                opacity: 0,
                transform: "scale(0.001)"
            },
            visibleStyle: {
                opacity: 1,
                transform: "scale(1)"
            }
        };
        var f = r.prototype;
        n.extend(f, e.prototype), f.option = function(t) {
            n.extend(this.options, t)
        }, f._getOption = function(t) {
            var e = this.constructor.compatOptions[t];
            return e && void 0 !== this.options[e] ? this.options[e] : this.options[t]
        }, r.compatOptions = {
            initLayout: "isInitLayout",
            horizontal: "isHorizontal",
            layoutInstant: "isLayoutInstant",
            originLeft: "isOriginLeft",
            originTop: "isOriginTop",
            resize: "isResizeBound",
            resizeContainer: "isResizingContainer"
        }, f._create = function() {
            this.reloadItems(), this.stamps = [], this.stamp(this.options.stamp), n.extend(this.element.style, this.options.containerStyle);
            var t = this._getOption("resize");
            t && this.bindResize()
        }, f.reloadItems = function() {
            this.items = this._itemize(this.element.children)
        }, f._itemize = function(t) {
            for (var e = this._filterFindItemElements(t), i = this.constructor.Item, n = [], o = 0; o < e.length; o++) {
                var r = e[o],
                    s = new i(r, this);
                n.push(s)
            }
            return n
        }, f._filterFindItemElements = function(t) {
            return n.filterFindElements(t, this.options.itemSelector)
        }, f.getItemElements = function() {
            return this.items.map(function(t) {
                return t.element
            })
        }, f.layout = function() {
            this._resetLayout(), this._manageStamps();
            var t = this._getOption("layoutInstant"),
                e = void 0 !== t ? t : !this._isLayoutInited;
            this.layoutItems(this.items, e), this._isLayoutInited = !0
        }, f._init = f.layout, f._resetLayout = function() {
            this.getSize()
        }, f.getSize = function() {
            this.size = i(this.element)
        }, f._getMeasurement = function(t, e) {
            var n = this.options[t],
                o;
            n ? ("string" == typeof n ? o = this.element.querySelector(n) : n instanceof HTMLElement && (o = n), this[t] = o ? i(o)[e] : n) : this[t] = 0
        }, f.layoutItems = function(t, e) {
            t = this._getItemsForLayout(t), this._layoutItems(t, e), this._postLayout()
        }, f._getItemsForLayout = function(t) {
            return t.filter(function(t) {
                return !t.isIgnored
            })
        }, f._layoutItems = function(t, e) {
            if (this._emitCompleteOnItems("layout", t), t && t.length) {
                var i = [];
                t.forEach(function(t) {
                    var n = this._getItemLayoutPosition(t);
                    n.item = t, n.isInstant = e || t.isLayoutInstant, i.push(n)
                }, this), this._processLayoutQueue(i)
            }
        }, f._getItemLayoutPosition = function() {
            return {
                x: 0,
                y: 0
            }
        }, f._processLayoutQueue = function(t) {
            this.updateStagger(), t.forEach(function(t, e) {
                this._positionItem(t.item, t.x, t.y, t.isInstant, e)
            }, this)
        }, f.updateStagger = function() {
            var t = this.options.stagger;
            return null === t || void 0 === t ? void(this.stagger = 0) : (this.stagger = a(t), this.stagger)
        }, f._positionItem = function(t, e, i, n, o) {
            n ? t.goTo(e, i) : (t.stagger(o * this.stagger), t.moveTo(e, i))
        }, f._postLayout = function() {
            this.resizeContainer()
        }, f.resizeContainer = function() {
            var t = this._getOption("resizeContainer");
            if (t) {
                var e = this._getContainerSize();
                e && (this._setContainerMeasure(e.width, !0), this._setContainerMeasure(e.height, !1))
            }
        }, f._getContainerSize = u, f._setContainerMeasure = function(t, e) {
            if (void 0 !== t) {
                var i = this.size;
                i.isBorderBox && (t += e ? i.paddingLeft + i.paddingRight + i.borderLeftWidth + i.borderRightWidth : i.paddingBottom + i.paddingTop + i.borderTopWidth + i.borderBottomWidth), t = Math.max(t, 0), this.element.style[e ? "width" : "height"] = t + "px"
            }
        }, f._emitCompleteOnItems = function(t, e) {
            function i() {
                o.dispatchEvent(t + "Complete", null, [e])
            }

            function n() {
                s++, s == r && i()
            }
            var o = this,
                r = e.length;
            if (!e || !r) return void i();
            var s = 0;
            e.forEach(function(e) {
                e.once(t, n)
            })
        }, f.dispatchEvent = function(t, e, i) {
            var n = e ? [e].concat(i) : i;
            if (this.emitEvent(t, n), l)
                if (this.$element = this.$element || l(this.element), e) {
                    var o = l.Event(e);
                    o.type = t, this.$element.trigger(o, i)
                } else this.$element.trigger(t, i)
        }, f.ignore = function(t) {
            var e = this.getItem(t);
            e && (e.isIgnored = !0)
        }, f.unignore = function(t) {
            var e = this.getItem(t);
            e && delete e.isIgnored
        }, f.stamp = function(t) {
            t = this._find(t), t && (this.stamps = this.stamps.concat(t), t.forEach(this.ignore, this))
        }, f.unstamp = function(t) {
            t = this._find(t), t && t.forEach(function(t) {
                n.removeFrom(this.stamps, t), this.unignore(t)
            }, this)
        }, f._find = function(t) {
            return t ? ("string" == typeof t && (t = this.element.querySelectorAll(t)), t = n.makeArray(t)) : void 0
        }, f._manageStamps = function() {
            this.stamps && this.stamps.length && (this._getBoundingRect(), this.stamps.forEach(this._manageStamp, this))
        }, f._getBoundingRect = function() {
            var t = this.element.getBoundingClientRect(),
                e = this.size;
            this._boundingRect = {
                left: t.left + e.paddingLeft + e.borderLeftWidth,
                top: t.top + e.paddingTop + e.borderTopWidth,
                right: t.right - (e.paddingRight + e.borderRightWidth),
                bottom: t.bottom - (e.paddingBottom + e.borderBottomWidth)
            }
        }, f._manageStamp = u, f._getElementOffset = function(t) {
            var e = t.getBoundingClientRect(),
                n = this._boundingRect,
                o = i(t),
                r = {
                    left: e.left - n.left - o.marginLeft,
                    top: e.top - n.top - o.marginTop,
                    right: n.right - e.right - o.marginRight,
                    bottom: n.bottom - e.bottom - o.marginBottom
                };
            return r
        }, f.handleEvent = n.handleEvent, f.bindResize = function() {
            t.addEventListener("resize", this), this.isResizeBound = !0
        }, f.unbindResize = function() {
            t.removeEventListener("resize", this), this.isResizeBound = !1
        }, f.onresize = function() {
            this.resize()
        }, n.debounceMethod(r, "onresize", 100), f.resize = function() {
            this.isResizeBound && this.needsResizeLayout() && this.layout()
        }, f.needsResizeLayout = function() {
            var t = i(this.element),
                e = this.size && t;
            return e && t.innerWidth !== this.size.innerWidth
        }, f.addItems = function(t) {
            var e = this._itemize(t);
            return e.length && (this.items = this.items.concat(e)), e
        }, f.appended = function(t) {
            var e = this.addItems(t);
            e.length && (this.layoutItems(e, !0), this.reveal(e))
        }, f.prepended = function(t) {
            var e = this._itemize(t);
            if (e.length) {
                var i = this.items.slice(0);
                this.items = e.concat(i), this._resetLayout(), this._manageStamps(), this.layoutItems(e, !0), this.reveal(e), this.layoutItems(i)
            }
        }, f.reveal = function(t) {
            if (this._emitCompleteOnItems("reveal", t), t && t.length) {
                var e = this.updateStagger();
                t.forEach(function(t, i) {
                    t.stagger(i * e), t.reveal()
                })
            }
        }, f.hide = function(t) {
            if (this._emitCompleteOnItems("hide", t), t && t.length) {
                var e = this.updateStagger();
                t.forEach(function(t, i) {
                    t.stagger(i * e), t.hide()
                })
            }
        }, f.revealItemElements = function(t) {
            var e = this.getItems(t);
            this.reveal(e)
        }, f.hideItemElements = function(t) {
            var e = this.getItems(t);
            this.hide(e)
        }, f.getItem = function(t) {
            for (var e = 0; e < this.items.length; e++) {
                var i = this.items[e];
                if (i.element == t) return i
            }
        }, f.getItems = function(t) {
            t = n.makeArray(t);
            var e = [];
            return t.forEach(function(t) {
                var i = this.getItem(t);
                i && e.push(i)
            }, this), e
        }, f.remove = function(t) {
            var e = this.getItems(t);
            this._emitCompleteOnItems("remove", e), e && e.length && e.forEach(function(t) {
                t.remove(), n.removeFrom(this.items, t)
            }, this)
        }, f.destroy = function() {
            var t = this.element.style;
            t.height = "", t.position = "", t.width = "", this.items.forEach(function(t) {
                t.destroy()
            }), this.unbindResize();
            var e = this.element.outlayerGUID;
            delete c[e], delete this.element.outlayerGUID, l && l.removeData(this.element, this.constructor.namespace)
        }, r.data = function(t) {
            t = n.getQueryElement(t);
            var e = t && t.outlayerGUID;
            return e && c[e]
        }, r.create = function(t, e) {
            var i = s(r);
            return i.defaults = n.extend({}, r.defaults), n.extend(i.defaults, e), i.compatOptions = n.extend({}, r.compatOptions), i.namespace = t, i.data = r.data, i.Item = s(o), n.htmlInit(i, t), l && l.bridget && l.bridget(t, i), i
        };
        var g = {
            ms: 1,
            s: 1e3
        };
        return r.Item = o, r
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("enviratope/item", ["outlayer/outlayer"], e) : "object" == typeof module && module.exports ? module.exports = e(require("outlayer")) : (t.Enviratope = t.Enviratope || {}, t.Enviratope.Item = e(t.Outlayer))
    }(window, function a(t) {
        "use strict";

        function e() {
            t.Item.apply(this, arguments)
        }
        var i = e.prototype = Object.create(t.Item.prototype),
            n = i._create;
        i._create = function() {
            this.id = this.layout.itemGUID++, n.call(this), this.sortData = {}
        }, i.updateSortData = function() {
            if (!this.isIgnored) {
                this.sortData.id = this.id, this.sortData["original-order"] = this.id, this.sortData.random = Math.random();
                var t = this.layout.options.getSortData,
                    e = this.layout._sorters;
                for (var i in t) {
                    var n = e[i];
                    this.sortData[i] = n(this.element, this)
                }
            }
        };
        var o = i.destroy;
        return i.destroy = function() {
            o.apply(this, arguments), this.css({
                display: ""
            })
        }, e
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("enviratope/layout-mode", ["get-size/get-size", "outlayer/outlayer"], e) : "object" == typeof module && module.exports ? module.exports = e(require("get-size"), require("outlayer")) : (t.Enviratope = t.Enviratope || {}, t.Enviratope.LayoutMode = e(t.getSize, t.Outlayer))
    }(window, function h(t, e) {
        "use strict";

        function i(t) {
            this.enviratope = t, t && (this.options = t.options[this.namespace], this.element = t.element, this.items = t.filteredItems, this.size = t.size)
        }
        var n = i.prototype,
            o = ["_resetLayout", "_getItemLayoutPosition", "_manageStamp", "_getContainerSize", "_getElementOffset", "needsResizeLayout", "_getOption"];
        return o.forEach(function(t) {
            n[t] = function() {
                return e.prototype[t].apply(this.enviratope, arguments)
            }
        }), n.needsVerticalResizeLayout = function() {
            var e = t(this.enviratope.element),
                i = this.enviratope.size && e;
            return i && e.innerHeight != this.enviratope.size.innerHeight
        }, n._getMeasurement = function() {
            this.enviratope._getMeasurement.apply(this, arguments)
        }, n.getColumnWidth = function() {
            this.getSegmentSize("column", "Width")
        }, n.getRowHeight = function() {
            this.getSegmentSize("row", "Height")
        }, n.getSegmentSize = function(t, e) {
            var i = t + e,
                n = "outer" + e;
            if (this._getMeasurement(i, n), !this[i]) {
                var o = this.getFirstItemSize();
                this[i] = o && o[n] || this.enviratope.size["inner" + e]
            }
        }, n.getFirstItemSize = function() {
            var e = this.enviratope.filteredItems[0];
            return e && e.element && t(e.element)
        }, n.layout = function() {
            this.enviratope.layout.apply(this.enviratope, arguments)
        }, n.getSize = function() {
            this.enviratope.getSize(), this.size = this.enviratope.size
        }, i.modes = {}, i.create = function(t, e) {
            function o() {
                i.apply(this, arguments)
            }
            return o.prototype = Object.create(n), o.prototype.constructor = o, e && (o.options = e), o.prototype.namespace = t, i.modes[t] = o, o
        }, i
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("masonry/masonry", ["outlayer/outlayer", "get-size/get-size"], e) : "object" == typeof module && module.exports ? module.exports = e(require("outlayer"), require("get-size")) : t.Masonry = e(t.Outlayer, t.getSize)
    }(window, function l(t, e) {
        var i = t.create("masonry");
        return i.compatOptions.fitWidth = "isFitWidth", i.prototype._resetLayout = function() {
            this.getSize(), this._getMeasurement("columnWidth", "outerWidth"), this._getMeasurement("gutter", "outerWidth"), this.measureColumns(), this.colYs = [];
            for (var t = 0; t < this.cols; t++) this.colYs.push(0);
            this.maxY = 0
        }, i.prototype.measureColumns = function() {
            if (this.getContainerWidth(), !this.columnWidth) {
                var t = this.items[0],
                    i = t && t.element;
                this.columnWidth = i && e(i).outerWidth || this.containerWidth
            }
            var n = this.columnWidth += this.gutter,
                o = this.containerWidth + this.gutter,
                r = o / n,
                s = n - o % n,
                a = s && 1 > s ? "round" : "floor";
            r = Math[a](r), this.cols = Math.max(r, 1)
        }, i.prototype.getContainerWidth = function() {
            var t = this._getOption("fitWidth"),
                i = t ? this.element.parentNode : this.element,
                n = e(i);
            this.containerWidth = n && n.innerWidth
        }, i.prototype._getItemLayoutPosition = function(t) {
            t.getSize();
            var e = t.size.outerWidth % this.columnWidth,
                i = e && 1 > e ? "round" : "ceil",
                n = Math[i](t.size.outerWidth / this.columnWidth);
            n = Math.min(n, this.cols);
            for (var o = this._getColGroup(n), r = Math.min.apply(Math, o), s = o.indexOf(r), a = {
                    x: this.columnWidth * s,
                    y: r
                }, h = r + t.size.outerHeight, l = this.cols + 1 - o.length, u = 0; l > u; u++) this.colYs[s + u] = h;
            return a
        }, i.prototype._getColGroup = function(t) {
            if (2 > t) return this.colYs;
            for (var e = [], i = this.cols + 1 - t, n = 0; i > n; n++) {
                var o = this.colYs.slice(n, n + t);
                e[n] = Math.max.apply(Math, o)
            }
            return e
        }, i.prototype._manageStamp = function(t) {
            var i = e(t),
                n = this._getElementOffset(t),
                o = this._getOption("originLeft"),
                r = o ? n.left : n.right,
                s = r + i.outerWidth,
                a = Math.floor(r / this.columnWidth);
            a = Math.max(0, a);
            var h = Math.floor(s / this.columnWidth);
            h -= s % this.columnWidth ? 0 : 1, h = Math.min(this.cols - 1, h);
            for (var l = this._getOption("originTop"), u = (l ? n.top : n.bottom) + i.outerHeight, d = a; h >= d; d++) this.colYs[d] = Math.max(u, this.colYs[d])
        }, i.prototype._getContainerSize = function() {
            this.maxY = Math.max.apply(Math, this.colYs);
            var t = {
                height: this.maxY
            };
            return this._getOption("fitWidth") && (t.width = this._getContainerFitWidth()), t
        }, i.prototype._getContainerFitWidth = function() {
            for (var t = 0, e = this.cols; --e && 0 === this.colYs[e];) t++;
            return (this.cols - t) * this.columnWidth - this.gutter
        }, i.prototype.needsResizeLayout = function() {
            var t = this.containerWidth;
            return this.getContainerWidth(), t != this.containerWidth
        }, i
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("enviratope/layout-modes/masonry", ["../layout-mode", "masonry/masonry"], e) : "object" == typeof module && module.exports ? module.exports = e(require("../layout-mode"), require("masonry-layout")) : e(t.Enviratope.LayoutMode, t.Masonry)
    }(window, function u(t, e) {
        "use strict";
        var i = t.create("masonry"),
            n = i.prototype,
            o = {
                _getElementOffset: !0,
                layout: !0,
                _getMeasurement: !0
            };
        for (var r in e.prototype) o[r] || (n[r] = e.prototype[r]);
        var s = n.measureColumns;
        n.measureColumns = function() {
            this.items = this.enviratope.filteredItems, s.call(this)
        };
        var a = n._getOption;
        return n._getOption = function(t) {
            return "fitWidth" == t ? void 0 !== this.options.isFitWidth ? this.options.isFitWidth : this.options.fitWidth : a.apply(this.enviratope, arguments)
        }, i
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("enviratope/layout-modes/fit-rows", ["../layout-mode"], e) : "object" == typeof exports ? module.exports = e(require("../layout-mode")) : e(t.Enviratope.LayoutMode)
    }(window, function d(t) {
        "use strict";
        var e = t.create("fitRows"),
            i = e.prototype;
        return i._resetLayout = function() {
            this.x = 0, this.y = 0, this.maxY = 0, this._getMeasurement("gutter", "outerWidth")
        }, i._getItemLayoutPosition = function(t) {
            t.getSize();
            var e = t.size.outerWidth + this.gutter,
                i = this.enviratope.size.innerWidth + this.gutter;
            0 !== this.x && e + this.x > i && (this.x = 0, this.y = this.maxY);
            var n = {
                x: this.x,
                y: this.y
            };
            return this.maxY = Math.max(this.maxY, this.y + t.size.outerHeight), this.x += e, n
        }, i._getContainerSize = function() {
            return {
                height: this.maxY
            }
        }, e
    }), function(t, e) {
        "function" == typeof define && define.amd ? define("enviratope/layout-modes/vertical", ["../layout-mode"], e) : "object" == typeof module && module.exports ? module.exports = e(require("../layout-mode")) : e(t.Enviratope.LayoutMode)
    }(window, function c(t) {
        "use strict";
        var e = t.create("vertical", {
                horizontalAlignment: 0
            }),
            i = e.prototype;
        return i._resetLayout = function() {
            this.y = 0
        }, i._getItemLayoutPosition = function(t) {
            t.getSize();
            var e = (this.enviratope.size.innerWidth - t.size.outerWidth) * this.options.horizontalAlignment,
                i = this.y;
            return this.y += t.size.outerHeight, {
                x: e,
                y: i
            }
        }, i._getContainerSize = function() {
            return {
                height: this.y
            }
        }, e
    }), function(t, e) {
        "function" == typeof define && define.amd ? define(["outlayer/outlayer", "get-size/get-size", "desandro-matches-selector/matches-selector", "fizzy-ui-utils/utils", "./item", "./layout-mode", "./layout-modes/masonry", "./layout-modes/fit-rows", "./layout-modes/vertical"], function(i, n, o, r, s, a) {
            return e(t, i, n, o, r, s, a)
        }) : "object" == typeof module && module.exports ? module.exports = e(t, require("outlayer"), require("get-size"), require("desandro-matches-selector"), require("fizzy-ui-utils"), require("./item"), require("./layout-mode"), require("./layout-modes/masonry"), require("./layout-modes/fit-rows"), require("./layout-modes/vertical")) : t.Enviratope = e(t, t.Outlayer, t.getSize, t.matchesSelector, t.fizzyUIUtils, t.Enviratope.Item, t.Enviratope.LayoutMode)
    }(window, function f(t, e, i, n, o, r, s) {
        function a(t, e) {
            return function i(n, o) {
                for (var r = 0; r < t.length; r++) {
                    var s = t[r],
                        a = n.sortData[s],
                        h = o.sortData[s];
                    if (a > h || h > a) {
                        var l = void 0 !== e[s] ? e[s] : e,
                            u = l ? 1 : -1;
                        return (a > h ? 1 : -1) * u
                    }
                }
                return 0
            }
        }
        var h = t.jQuery,
            l = String.prototype.trim ? function(t) {
                return t.trim()
            } : function(t) {
                return t.replace(/^\s+|\s+$/g, "")
            },
            u = e.create("enviratope", {
                layoutMode: "masonry",
                isJQueryFiltering: !0,
                sortAscending: !0
            });
        u.Item = r, u.LayoutMode = s;
        var d = u.prototype;
        d._create = function() {
            this.itemGUID = 0, this._sorters = {}, this._getSorters(), e.prototype._create.call(this), this.modes = {}, this.filteredItems = this.items, this.sortHistory = ["original-order"];
            for (var t in s.modes) this._initLayoutMode(t)
        }, d.reloadItems = function() {
            this.itemGUID = 0, e.prototype.reloadItems.call(this)
        }, d._itemize = function() {
            for (var t = e.prototype._itemize.apply(this, arguments), i = 0; i < t.length; i++) {
                var n = t[i];
                n.id = this.itemGUID++
            }
            return this._updateItemsSortData(t), t
        }, d._initLayoutMode = function(t) {
            var e = s.modes[t],
                i = this.options[t] || {};
            this.options[t] = e.options ? o.extend(e.options, i) : i, this.modes[t] = new e(this)
        }, d.layout = function() {
            return !this._isLayoutInited && this._getOption("initLayout") ? void this.arrange() : void this._layout()
        }, d._layout = function() {
            var t = this._getIsInstant();
            this._resetLayout(), this._manageStamps(), this.layoutItems(this.filteredItems, t), this._isLayoutInited = !0
        }, d.arrange = function(t) {
            this.option(t), this._getIsInstant();
            var e = this._filter(this.items);
            this.filteredItems = e.matches, this._bindArrangeComplete(), this._isInstant ? this._noTransition(this._hideReveal, [e]) : this._hideReveal(e), this._sort(), this._layout()
        }, d._init = d.arrange, d._hideReveal = function(t) {
            this.reveal(t.needReveal), this.hide(t.needHide)
        }, d._getIsInstant = function() {
            var t = this._getOption("layoutInstant"),
                e = void 0 !== t ? t : !this._isLayoutInited;
            return this._isInstant = e, e
        }, d._bindArrangeComplete = function() {
            function t() {
                e && i && n && o.dispatchEvent("arrangeComplete", null, [o.filteredItems])
            }
            var e, i, n, o = this;
            this.once("layoutComplete", function() {
                e = !0, t()
            }), this.once("hideComplete", function() {
                i = !0, t()
            }), this.once("revealComplete", function() {
                n = !0, t()
            })
        }, d._filter = function(t) {
            var e = this.options.filter;
            e = e || "*";
            for (var i = [], n = [], o = [], r = this._getFilterTest(e), s = 0; s < t.length; s++) {
                var a = t[s];
                if (!a.isIgnored) {
                    var h = r(a);
                    h && i.push(a), h && a.isHidden ? n.push(a) : h || a.isHidden || o.push(a)
                }
            }
            return {
                matches: i,
                needReveal: n,
                needHide: o
            }
        }, d._getFilterTest = function(t) {
            return h && this.options.isJQueryFiltering ? function(e) {
                return h(e.element).is(t)
            } : "function" == typeof t ? function(e) {
                return t(e.element)
            } : function(e) {
                return n(e.element, t)
            }
        }, d.updateSortData = function(t) {
            var e;
            t ? (t = o.makeArray(t), e = this.getItems(t)) : e = this.items, this._getSorters(), this._updateItemsSortData(e)
        }, d._getSorters = function() {
            var t = this.options.getSortData;
            for (var e in t) {
                var i = t[e];
                this._sorters[e] = c(i)
            }
        }, d._updateItemsSortData = function(t) {
            for (var e = t && t.length, i = 0; e && e > i; i++) {
                var n = t[i];
                n.updateSortData()
            }
        };
        var c = function() {
            function t(t) {
                if ("string" != typeof t) return t;
                var i = l(t).split(" "),
                    n = i[0],
                    o = n.match(/^\[(.+)\]$/),
                    r = o && o[1],
                    s = e(r, n),
                    a = u.sortDataParsers[i[1]];
                return t = a ? function(t) {
                    return t && a(s(t))
                } : function(t) {
                    return t && s(t)
                }
            }

            function e(t, e) {
                return t ? function i(e) {
                    return e.getAttribute(t)
                } : function n(t) {
                    var i = t.querySelector(e);
                    return i && i.textContent
                }
            }
            return t
        }();
        u.sortDataParsers = {
            parseInt: function(t) {
                return parseInt(t, 10)
            },
            parseFloat: function(t) {
                return parseFloat(t)
            }
        }, d._sort = function() {
            var t = this.options.sortBy;
            if (t) {
                var e = [].concat.apply(t, this.sortHistory),
                    i = a(e, this.options.sortAscending);
                this.filteredItems.sort(i), t != this.sortHistory[0] && this.sortHistory.unshift(t)
            }
        }, d._mode = function() {
            var t = this.options.layoutMode,
                e = this.modes[t];
            if (!e) throw new Error("No layout mode: " + t);
            return e.options = this.options[t], e
        }, d._resetLayout = function() {
            e.prototype._resetLayout.call(this), this._mode()._resetLayout()
        }, d._getItemLayoutPosition = function(t) {
            return this._mode()._getItemLayoutPosition(t)
        }, d._manageStamp = function(t) {
            this._mode()._manageStamp(t)
        }, d._getContainerSize = function() {
            return this._mode()._getContainerSize()
        }, d.needsResizeLayout = function() {
            return this._mode().needsResizeLayout()
        }, d.appended = function(t) {
            var e = this.addItems(t);
            if (e.length) {
                var i = this._filterRevealAdded(e);
                this.filteredItems = this.filteredItems.concat(i)
            }
        }, d.prepended = function(t) {
            var e = this._itemize(t);
            if (e.length) {
                this._resetLayout(), this._manageStamps();
                var i = this._filterRevealAdded(e);
                this.layoutItems(this.filteredItems), this.filteredItems = i.concat(this.filteredItems), this.items = e.concat(this.items)
            }
        }, d._filterRevealAdded = function(t) {
            var e = this._filter(t);
            return this.hide(e.needHide), this.reveal(e.matches), this.layoutItems(e.matches, !0), e.matches
        }, d.insert = function(t) {
            var e = this.addItems(t);
            if (e.length) {
                var i, n, o = e.length;
                for (i = 0; o > i; i++) n = e[i], this.element.appendChild(n.element);
                var r = this._filter(e).matches;
                for (i = 0; o > i; i++) e[i].isLayoutInstant = !0;
                for (this.arrange(), i = 0; o > i; i++) delete e[i].isLayoutInstant;
                this.reveal(r)
            }
        };
        var f = d.remove;
        return d.remove = function(t) {
            t = o.makeArray(t);
            var e = this.getItems(t);
            f.call(this, t);
            for (var i = e && e.length, n = 0; i && i > n; n++) {
                var r = e[n];
                o.removeFrom(this.filteredItems, r)
            }
        }, d.shuffle = function() {
            for (var t = 0; t < this.items.length; t++) {
                var e = this.items[t];
                e.sortData.random = Math.random()
            }
            this.options.sortBy = "random", this._sort(), this._layout()
        }, d._noTransition = function(t, e) {
            var i = this.options.transitionDuration;
            this.options.transitionDuration = 0;
            var n = t.apply(this, e);
            return this.options.transitionDuration = i, n
        }, d.getFilteredItemElements = function() {
            return this.filteredItems.map(function(t) {
                return t.element
            })
        }, u
    }), function(t) {
        var e, i, n, o, r, s, a, h, l, u, d = 0,
            c = {},
            f = [],
            g = 0,
            p = {},
            m = [],
            v = null,
            y = new Image,
            w = /\.(jpg|gif|png|bmp|jpeg)(.*)?$/i,
            b = /[^\.]\.(swf)\s*$/i,
            x, I = 1,
            S = 0,
            E = "",
            _, z, R = !1,
            T = t.extend(t("<div/>")[0], {
                prop: 0
            }),
            C = !1,
            j = function() {
                i.hide(), y.onerror = y.onload = null, v && v.abort(), e.empty()
            },
            O = function() {
                return !1 === c.onError(f, d, c) ? (i.hide(), void(R = !1)) : (c.titleShow = !1, c.width = "auto", c.height = "auto", e.html('<p id="envirabox-error">The requested content cannot be loaded.<br />Please try again later.</p>'), void A())
            },
            L = function() {
                var n = f[d],
                    o, r, a, h, l, u;
                if (j(), c = t.extend({}, t.fn.envirabox.defaults, "undefined" == typeof t(n).data("envirabox") ? c : t(n).data("envirabox")), u = c.onStart(f, d, c), u === !1) return void(R = !1);
                if ("object" == typeof u && (c = t.extend(c, u)), a = c.title || (n.nodeName ? t(n).attr("title") : n.title) || "", n.nodeName && !c.orig && (c.orig = t(n).children("img:first").length ? t(n).children("img:first") : t(n)), "" === a && c.orig && c.titleFromAlt && (a = c.orig.attr("alt")), o = c.href || (n.nodeName ? t(n).attr("href") : n.href) || null, (/^(?:javascript)/i.test(o) || "#" == o) && (o = null), "string" == typeof o && t.envirabox.isUrl(o) && !t.envirabox.isImage(o) && (document.getElementById("envirabox-loading").style.visibility = "hidden", window.location.href = o), c.type ? (r = c.type, o || (o = c.content)) : c.content ? r = "html" : o && (r = o.match(w) ? "image" : o.match(b) ? "swf" : t(n).hasClass("iframe") ? "iframe" : 0 === o.indexOf("#") ? "inline" : "ajax"), !r) return void O();
                switch ("inline" == r && (n = o.substr(o.indexOf("#")), r = t(n).length > 0 ? "inline" : "ajax"), c.type = r, c.href = o, c.title = a, c.autoDimensions && ("html" == c.type || "inline" == c.type || "ajax" == c.type ? (c.width = "auto", c.height = "auto") : c.autoDimensions = !1), c.modal && (c.overlayShow = !0, c.hideOnOverlayClick = !1, c.hideOnContentClick = !1, c.enableEscapeButton = !1, c.showCloseButton = !1), c.padding = parseInt(c.padding, 10), c.margin = parseInt(c.margin, 10), e.css("padding", c.padding + c.margin), t(".envirabox-inline-tmp").unbind("envirabox-cancel").bind("envirabox-change", function() {
                    t(this).replaceWith(s.children())
                }), r) {
                    case "html":
                        e.html(c.content), A();
                        break;
                    case "inline":
                        if (t(n).parent().is("#envirabox-content") === !0) return void(R = !1);
                        t('<div class="envirabox-inline-tmp" />').hide().insertBefore(t(n)).bind("envirabox-cleanup", function() {
                            t(this).replaceWith(s.children())
                        }).bind("envirabox-cancel", function() {
                            t(this).replaceWith(e.children())
                        }), t(n).appendTo(e), A();
                        break;
                    case "image":
                        R = !1, t.envirabox.showActivity(), y = new Image, y.onerror = function() {
                            O()
                        }, y.onload = function() {
                            R = !0, y.onerror = y.onload = null, D()
                        }, y.src = o;
                        break;
                    case "swf":
                        c.scrolling = "no", h = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="' + c.width + '" height="' + c.height + '"><param name="movie" value="' + o + '"></param>', l = "", t.each(c.swf, function(t, e) {
                            h += '<param name="' + t + '" value="' + e + '"></param>', l += " " + t + '="' + e + '"'
                        }), h += '<embed src="' + o + '" type="application/x-shockwave-flash" width="' + c.width + '" height="' + c.height + '"' + l + "></embed></object>", e.html(h), A();
                        break;
                    case "ajax":
                        R = !1, t.envirabox.showActivity(), c.ajax.win = c.ajax.success, v = t.ajax(t.extend({}, c.ajax, {
                            url: o,
                            data: c.ajax.data || {},
                            error: function(t, e, i) {
                                t.status > 0 && O()
                            },
                            success: function(t, n, r) {
                                var s = "object" == typeof r ? r : v;
                                if (200 == s.status) {
                                    if ("function" == typeof c.ajax.win) {
                                        if (u = c.ajax.win(o, t, n, r), u === !1) return void i.hide();
                                        ("string" == typeof u || "object" == typeof u) && (t = u)
                                    }
                                    e.html(t), A()
                                }
                            }
                        }));
                        break;
                    case "iframe":
                        M()
                }
            },
            A = function() {
                var i = c.width,
                    n = c.height;
                i = i.toString().indexOf("%") > -1 ? parseInt((t(window).width() - 2 * c.margin) * parseFloat(i) / 100, 10) + "px" : "auto" == i ? "auto" : i + "px", n = n.toString().indexOf("%") > -1 ? parseInt((t(window).height() - 2 * c.margin) * parseFloat(n) / 100, 10) + "px" : "auto" == n ? "auto" : n + "px", e.wrapInner('<div style="width:' + i + ";height:" + n + ";overflow: " + ("auto" == c.scrolling ? "auto" : "yes" == c.scrolling ? "scroll" : "hidden") + ';position:relative;"></div>'), c.width = e.width(), c.height = e.height(), M()
            },
            D = function() {
                c.width = y.width, c.height = y.height, t("<img />").attr({
                    id: "envirabox-img",
                    src: y.src,
                    alt: c.title
                }).appendTo(e), M()
            },
            M = function() {
                var r, v;
                return i.hide(), o.is(":visible") && !1 === p.onCleanup(m, g, p) ? (t.event.trigger("envirabox-cancel"), void(R = !1)) : (R = !0, t(s.add(n)).unbind(), t(window).unbind("resize.fb scroll.fb"), t(document).unbind("keydown.fb"), o.is(":visible") && "outside" !== p.titlePosition && o.css("height", o.height()), m = f, g = d, p = c, p.overlayShow ? (n.css({
                    "background-color": p.overlayColor,
                    opacity: p.overlayOpacity,
                    cursor: p.hideOnOverlayClick ? "pointer" : "auto",
                    height: t(document).height()
                }), n.is(":visible") || (C && t("select:not(#envirabox-tmp select)").filter(function() {
                    return "hidden" !== this.style.visibility
                }).css({
                    visibility: "hidden"
                }).one("envirabox-cleanup", function() {
                    this.style.visibility = "inherit"
                }), n.show())) : n.hide(), z = q(), k(), o.is(":visible") ? (t(a.add(l).add(u)).hide(), r = o.position(), _ = {
                    top: r.top,
                    left: r.left,
                    width: o.width(),
                    height: o.height()
                }, v = _.width == z.width && _.height == z.height, void s.fadeTo(p.changeFade, .3, function() {
                    var i = function() {
                        s.html(e.contents()).fadeTo(p.changeFade, 1, F)
                    };
                    t.event.trigger("envirabox-change"), s.empty().removeAttr("filter").css({
                        "border-width": p.padding,
                        width: z.width - 2 * p.padding,
                        height: c.autoDimensions ? "auto" : z.height - S - 2 * p.padding
                    }), v ? i() : (T.prop = 0, t(T).animate({
                        prop: 1
                    }, {
                        duration: p.changeSpeed,
                        easing: p.easingChange,
                        step: P,
                        complete: i
                    }))
                })) : (o.removeAttr("style"), s.css("border-width", p.padding), "elastic" == p.transitionIn ? (_ = U(), s.html(e.contents()), o.show(), p.opacity && (z.opacity = 0), T.prop = 0, void t(T).animate({
                    prop: 1
                }, {
                    duration: p.speedIn,
                    easing: p.easingIn,
                    step: P,
                    complete: F
                })) : ("inside" == p.titlePosition && S > 0 && h.show(), s.css({
                    width: z.width - 2 * p.padding,
                    height: c.autoDimensions ? "auto" : z.height - S - 2 * p.padding
                }).html(e.contents()), void o.css(z).fadeIn("none" == p.transitionIn ? 0 : p.speedIn, F))))
            },
            H = function(t) {
                return t && t.length ? "float" == p.titlePosition ? '<table id="envirabox-title-float-wrap" cellpadding="0" cellspacing="0"><tr><td id="envirabox-title-float-left"></td><td id="envirabox-title-float-main">' + t + '</td><td id="envirabox-title-float-right"></td></tr></table>' : '<div id="envirabox-title-' + p.titlePosition + '">' + t + "</div>" : !1
            },
            k = function() {
                if (E = p.title || "", S = 0, h.empty().removeAttr("style").removeClass(), p.titleShow === !1) return void h.hide();
                if (E = t.isFunction(p.titleFormat) ? p.titleFormat(E, m, g, p) : H(E), !E || "" === E) return void h.hide();
                switch (h.addClass("envirabox-title-" + p.titlePosition).html(E).appendTo("body").show(), p.titlePosition) {
                    case "inside":
                        h.css({
                            width: z.width - 2 * p.padding,
                            marginLeft: p.padding,
                            marginRight: p.padding
                        }), S = h.outerHeight(!0), h.appendTo(r), z.height += S;
                        break;
                    case "over":
                        h.css({
                            marginLeft: p.padding,
                            width: z.width - 2 * p.padding,
                            bottom: p.padding
                        }).appendTo(r);
                        break;
                    case "float":
                        h.css("left", -1 * parseInt((h.width() - z.width - 40) / 2, 10)).appendTo(o);
                        break;
                    default:
                        h.css({
                            width: z.width - 2 * p.padding,
                            paddingLeft: p.padding,
                            paddingRight: p.padding
                        }).appendTo(o)
                }
                h.hide()
            },
            W = function() {
                return (p.enableEscapeButton || p.enableKeyboardNav) && t(document).bind("keydown.fb", function(e) {
                    27 == e.keyCode && p.enableEscapeButton ? (e.preventDefault(), t.envirabox.close()) : 37 != e.keyCode && 39 != e.keyCode || !p.enableKeyboardNav || "INPUT" === e.target.tagName || "TEXTAREA" === e.target.tagName || "SELECT" === e.target.tagName || (e.preventDefault(), t.envirabox[37 == e.keyCode ? "prev" : "next"]())
                }), p.showNavArrows ? ((p.cyclic && m.length > 1 || 0 !== g) && l.show(), void((p.cyclic && m.length > 1 || g != m.length - 1) && u.show())) : (l.hide(), void u.hide())
            },
            F = function() {
                t.support.opacity || (s.get(0).style.removeAttribute("filter"), o.get(0).style.removeAttribute("filter")), c.autoDimensions && s.css("height", "auto"), o.css("height", "auto"), E && E.length && h.show(), p.showCloseButton && a.show(), W(), p.hideOnContentClick && s.bind("click", t.envirabox.close), p.hideOnOverlayClick && n.bind("click", t.envirabox.close), t(window).bind("resize.fb", t.envirabox.resize), p.centerOnScroll && t(window).bind("scroll.fb", t.envirabox.center), "iframe" == p.type && t('<iframe id="envirabox-frame" name="envirabox-frame' + (new Date).getTime() + '" frameborder="0" hspace="0" scrolling="' + c.scrolling + '" src="' + p.href + '"></iframe>').appendTo(s), o.show(), R = !1, t.envirabox.center(), p.onComplete(m, g, p), B()
            },
            B = function() {
                var t, e;
                m.length - 1 > g && (t = m[g + 1].href, "undefined" != typeof t && t.match(w) && (e = new Image, e.src = t)), g > 0 && (t = m[g - 1].href, "undefined" != typeof t && t.match(w) && (e = new Image, e.src = t))
            },
            P = function(t) {
                var e = {
                    width: parseInt(_.width + (z.width - _.width) * t, 10),
                    height: parseInt(_.height + (z.height - _.height) * t, 10),
                    top: parseInt(_.top + (z.top - _.top) * t, 10),
                    left: parseInt(_.left + (z.left - _.left) * t, 10)
                };
                "undefined" != typeof z.opacity && (e.opacity = .5 > t ? .5 : t), o.css(e), s.css({
                    width: e.width - 2 * p.padding,
                    height: e.height - S * t - 2 * p.padding
                })
            },
            N = function() {
                return [t(window).width() - 2 * p.margin, t(window).height() - 2 * p.margin, t(document).scrollLeft() + p.margin, t(document).scrollTop() + p.margin]
            },
            q = function() {
                var t = N(),
                    e = {},
                    i = p.autoScale,
                    n = 2 * p.padding,
                    o;
                return p.width.toString().indexOf("%") > -1 ? e.width = parseInt(t[0] * parseFloat(p.width) / 100, 10) : e.width = p.width + n, p.height.toString().indexOf("%") > -1 ? e.height = parseInt(t[1] * parseFloat(p.height) / 100, 10) : e.height = p.height + n, i && (e.width > t[0] || e.height > t[1]) && ("image" == c.type || "swf" == c.type ? (o = p.width / p.height, e.width > t[0] && (e.width = t[0], e.height = parseInt((e.width - n) / o + n, 10)), e.height > t[1] && (e.height = t[1], e.width = parseInt((e.height - n) * o + n, 10))) : (e.width = Math.min(e.width, t[0]), e.height = Math.min(e.height, t[1]))), e.top = parseInt(Math.max(t[3] - 20, t[3] + .5 * (t[1] - e.height - 40)), 10), e.left = parseInt(Math.max(t[2] - 20, t[2] + .5 * (t[0] - e.width - 40)), 10), e
            },
            Q = function(t) {
                var e = t.offset();
                return e.top += parseInt(t.css("paddingTop"), 10) || 0, e.left += parseInt(t.css("paddingLeft"), 10) || 0, e.top += parseInt(t.css("border-top-width"), 10) || 0, e.left += parseInt(t.css("border-left-width"), 10) || 0, e.width = t.width(), e.height = t.height(), e
            },
            U = function() {
                var e = c.orig ? t(c.orig) : !1,
                    i = {},
                    n, o;
                return e && e.length ? (n = Q(e), i = {
                    width: n.width + 2 * p.padding,
                    height: n.height + 2 * p.padding,
                    top: n.top - p.padding - 20,
                    left: n.left - p.padding - 20
                }) : (o = N(), i = {
                    width: 2 * p.padding,
                    height: 2 * p.padding,
                    top: parseInt(o[3] + .5 * o[1], 10),
                    left: parseInt(o[2] + .5 * o[0], 10)
                }), i
            },
            Y = function() {
                return i.is(":visible") ? (t("div", i).css("top", -40 * I + "px"), void(I = (I + 1) % 12)) : void clearInterval(x)
            };
        t.fn.envirabox = function(e) {
            return t(this).length ? (t(this).data("envirabox", t.extend({}, e, t.metadata ? t(this).metadata() : {})).unbind("click.fb").bind("click.fb", function(e) {
                if (e.preventDefault(), !R) {
                    R = !0, t(this).blur(), f = [], d = 0;
                    var i = t(this).attr("rel") || "";
                    i && "" != i && "nofollow" !== i ? (f = t("a[rel=" + i + "], area[rel=" + i + "]"), d = f.index(this)) : f.push(this), L()
                }
            }), this) : this
        }, t.envirabox = function(e) {
            var i;
            if (!R) {
                if (R = !0, i = "undefined" != typeof arguments[1] ? arguments[1] : {}, f = [], d = parseInt(i.index, 10) || 0, t.isArray(e)) {
                    for (var n = 0, o = e.length; o > n; n++) "object" == typeof e[n] ? t(e[n]).data("envirabox", t.extend({}, i, e[n])) : e[n] = t({}).data("envirabox", t.extend({
                        content: e[n]
                    }, i));
                    f = jQuery.merge(f, e)
                } else "object" == typeof e ? t(e).data("envirabox", t.extend({}, i, e)) : e = t({}).data("envirabox", t.extend({
                    content: e
                }, i)), f.push(e);
                (d > f.length || 0 > d) && (d = 0), L()
            }
        }, t.envirabox.showActivity = function() {
            clearInterval(x), i.show(), x = setInterval(Y, 66)
        }, t.envirabox.hideActivity = function() {
            i.hide()
        }, t.envirabox.next = function() {
            return t.envirabox.pos(g + 1)
        }, t.envirabox.prev = function() {
            return t.envirabox.pos(g - 1)
        }, t.envirabox.pos = function(t) {
            R || (t = parseInt(t), f = m, t > -1 && t < m.length ? (d = t, L()) : p.cyclic && m.length > 1 && (d = t >= m.length ? 0 : m.length - 1, L()))
        }, t.envirabox.cancel = function() {
            R || (R = !0, t.event.trigger("envirabox-cancel"), j(), c.onCancel(f, d, c), R = !1)
        }, t.envirabox.close = function() {
            function e() {
                n.fadeOut("fast"), h.empty().hide(), o.hide(), t.event.trigger("envirabox-cleanup"), s.empty(), p.onClosed(m, g, p), m = c = [], g = d = 0, p = c = {}, R = !1
            }
            if (!R && !o.is(":hidden")) {
                if (R = !0, p && !1 === p.onCleanup(m, g, p)) return void(R = !1);
                if (j(), t(a.add(l).add(u)).hide(), t(s.add(n)).unbind(), t(window).unbind("resize.fb scroll.fb"), t(document).unbind("keydown.fb"), s.find("iframe").attr("src", C && /^https/i.test(window.location.href || "") ? "javascript:void(false)" : "about:blank"), "inside" !== p.titlePosition && h.empty(), o.stop(), "elastic" == p.transitionOut) {
                    _ = U();
                    var i = o.position();
                    z = {
                        top: i.top,
                        left: i.left,
                        width: o.width(),
                        height: o.height()
                    }, p.opacity && (z.opacity = 1), h.empty().hide(), T.prop = 1, t(T).animate({
                        prop: 0
                    }, {
                        duration: p.speedOut,
                        easing: p.easingOut,
                        step: P,
                        complete: e
                    })
                } else o.fadeOut("none" == p.transitionOut ? 0 : p.speedOut, e)
            }
        }, t.envirabox.resize = function() {
            n.is(":visible") && n.css("height", t(document).height());
            var e, i;
            z = q(), k(), h.show(), e = o.position(), _ = {
                top: e.top,
                left: e.left,
                width: o.width(),
                height: o.height()
            }, i = _.width == z.width && _.height == z.height, i || (T.prop = 0, t(T).animate({
                prop: 1
            }, {
                duration: p.changeSpeed,
                easing: p.easingChange,
                step: P
            })), s.css({
                width: z.width - 2 * p.padding,
                height: c.autoDimensions ? "auto" : z.height - S - 2 * p.padding
            }), o.css(z), t.envirabox.center(!0)
        }, t.envirabox.center = function() {
            var t, e;
            R || (e = arguments[0] === !0 ? 1 : 0, t = N(), (e || !(o.width() > t[0] || o.height() > t[1])) && o.stop().animate({
                top: parseInt(Math.max(t[3] - 20, t[3] + .5 * (t[1] - s.height() - 40) - p.padding)),
                left: parseInt(Math.max(t[2] - 20, t[2] + .5 * (t[0] - s.width() - 40) - p.padding))
            }, "number" == typeof arguments[0] ? arguments[0] : 200))
        }, t.envirabox.init = function() {
            t("#envirabox-wrap").length || (t("body").append(e = t('<div id="envirabox-tmp"></div>'), i = t('<div id="envirabox-loading"><div></div></div>'), n = t('<div id="envirabox-overlay"></div>'), o = t('<div id="envirabox-wrap"></div>')), r = t('<div id="envirabox-outer"></div>').append('<div class="envirabox-bg" id="envirabox-bg-n"></div><div class="envirabox-bg" id="envirabox-bg-ne"></div><div class="envirabox-bg" id="envirabox-bg-e"></div><div class="envirabox-bg" id="envirabox-bg-se"></div><div class="envirabox-bg" id="envirabox-bg-s"></div><div class="envirabox-bg" id="envirabox-bg-sw"></div><div class="envirabox-bg" id="envirabox-bg-w"></div><div class="envirabox-bg" id="envirabox-bg-nw"></div>').appendTo(o), r.append(s = t('<div id="envirabox-content"></div>'), a = t('<a id="envirabox-close"></a>'), h = t('<div id="envirabox-title"></div>'), l = t('<a href="javascript:;" id="envirabox-left"><span class="fancy-ico" id="envirabox-left-ico"></span></a>'), u = t('<a href="javascript:;" id="envirabox-right"><span class="fancy-ico" id="envirabox-right-ico"></span></a>')), a.click(t.envirabox.close), i.click(t.envirabox.cancel), l.click(function(e) {
                e.preventDefault(), t.envirabox.prev()
            }), u.click(function(e) {
                e.preventDefault(), t.envirabox.next()
            }), t.fn.mousewheel && o.bind("mousewheel.fb", function(e, i) {
                R ? e.preventDefault() : (0 == t(e.target).get(0).clientHeight || t(e.target).get(0).scrollHeight === t(e.target).get(0).clientHeight) && (e.preventDefault(), t.envirabox[i > 0 ? "prev" : "next"]())
            }), t.support.opacity || o.addClass("envirabox-ie"), C && (i.addClass("envirabox-ie6"), o.addClass("envirabox-ie6"), t('<iframe id="envirabox-hide-sel-frame" src="' + (/^https/i.test(window.location.href || "") ? "javascript:void(false)" : "about:blank") + '" scrolling="no" border="0" frameborder="0" tabindex="-1"></iframe>').prependTo(r)))
        }, t.envirabox.isUrl = function(t) {
            return t.match(/^(https?):\/\/((?:[a-z0-9.-]|%[0-9A-F]{2}){3,})(?::(\d+))?((?:\/(?:[a-z0-9-._~!$&'()*+,;=:@]|%[0-9A-F]{2})*)*)(?:\?((?:[a-z0-9-._~!$&'()*+,;=:\/?@]|%[0-9A-F]{2})*))?(?:#((?:[a-z0-9-._~!$&'()*+,;=:\/?@]|%[0-9A-F]{2})*))?$/i)
        }, t.envirabox.isImage = function(t) {
            return t.match(/(^data:image\/.*,)|(\.(jp(e|g|eg)|gif|png|bmp|webp|svg)((\?|#).*)?$)/i)
        }, t.fn.envirabox.defaults = {
            padding: 10,
            margin: 40,
            opacity: !1,
            modal: !1,
            cyclic: !1,
            scrolling: "auto",
            width: 560,
            height: 340,
            autoScale: !0,
            autoDimensions: !0,
            centerOnScroll: !1,
            ajax: {},
            swf: {
                wmode: "transparent"
            },
            hideOnOverlayClick: !0,
            hideOnContentClick: !1,
            overlayShow: !0,
            overlayOpacity: .9,
            overlayColor: "#777",
            titleShow: !0,
            titlePosition: "float",
            titleFormat: null,
            titleFromAlt: !1,
            transitionIn: "fade",
            transitionOut: "fade",
            speedIn: 300,
            speedOut: 300,
            changeSpeed: 300,
            changeFade: "fast",
            easingIn: "swing",
            easingOut: "swing",
            showCloseButton: !0,
            showNavArrows: !0,
            enableEscapeButton: !0,
            enableKeyboardNav: !0,
            onStart: function() {},
            onCancel: function() {},
            onComplete: function() {},
            onCleanup: function() {},
            onClosed: function() {},
            onError: function() {}
        }, t(document).ready(function() {
            t.envirabox.init()
        })
    }(jQuery), "undefined" != typeof envira_lazy_load && "true" == envira_lazy_load) var responsivelyLazy = function() {
    var t = !1,
        e = null,
        i = null,
        n = !1,
        o = !1,
        r = "undefined" != typeof IntersectionObserver,
        s = function(t) {
            if (null === e && (e = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth, i = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight, null === e)) return !1;
            var n = t.getBoundingClientRect(),
                o = n.top,
                r = n.left,
                s = n.width,
                a = n.height,
                h = i > o && o + a > 0 && e > r && r + s > 0;
            return h
        };
    jQuery.fn.exists = function() {
        return this.length > 0
    };
    var a = function(e, i) {
            var n = i.getAttribute("data-envira-srcset");
            if (null !== n)
                if (n = n.trim(), n.length > 0) {
                    n = n.split(",");
                    for (var o = [], r = n.length, s = 0; r > s; s++) {
                        var a = n[s].trim();
                        if (0 !== a.length) {
                            var h = a.lastIndexOf(" ");
                            if (-1 === h) var l = a,
                                u = 999998;
                            else var l = a.substr(0, h),
                                u = parseInt(a.substr(h + 1, a.length - h - 2), 10);
                            var d = !1; - 1 !== l.indexOf(".webp", l.length - 5) ? t && (d = !0) : d = !0, d && o.push([l, u])
                        }
                    }
                    o.sort(function(t, e) {
                        if (t[1] < e[1]) return -1;
                        if (t[1] > e[1]) return 1;
                        if (t[1] === e[1]) {
                            if (-1 !== e[0].indexOf(".webp", e[0].length - 5)) return 1;
                            if (-1 !== t[0].indexOf(".webp", t[0].length - 5)) return -1
                        }
                        return 0
                    }), n = o
                } else n = [];
            else n = [];
            for (var c = e.offsetWidth * window.devicePixelRatio, f = null, r = n.length, s = 0; r > s; s++) {
                var g = n[s];
                if (g[1] >= c) {
                    f = g;
                    break
                }
            }
            if (null === f && (f = [i.getAttribute("data-envira-src"), 999999]), "undefined" == typeof e.lastSetOption && (e.lastSetOption = ["", 0]), e.lastSetOption[1] < f[1]) {
                var p = 0 === e.lastSetOption[1],
                    m = f[0],
                    v = new Image;
                v.addEventListener("load", function() {
                    if (i.setAttribute("srcset", m), i.setAttribute("src", m), p) {
                        var t = e.getAttribute("data-onlazyload");
                        null !== t && new Function(t).bind(e)()
                    }
                }, !1), v.addEventListener("error", function() {
                    e.lastSetOption = ["", 0]
                }, !1), v.onload = function() {
                    if ("envira-lazy" == e.getAttribute("class")) var t = e.firstElementChild,
                        i = e,
                        n = t.id,
                        o = t.src,
                        r = jQuery(t).data("envira-gallery-id"),
                        s = this.naturalWidth,
                        a = this.naturalHeight;
                    else var t = v,
                        i = e,
                        n = e.id,
                        o = e.src,
                        r = jQuery(t).data("envira-gallery-id"),
                        s = this.naturalWidth,
                        a = this.naturalHeight;
                    (void 0 === r || null === r) && (r = 0), jQuery(document).trigger({
                        type: "envira_image_lazy_load_complete",
                        container: i,
                        image_src: o,
                        image_id: n,
                        gallery_id: r,
                        naturalWidth: s,
                        naturalHeight: a
                    })
                }, v.onerror = function() {}, v.src = null, v.src = m, e.lastSetOption = f
            }
        },
        h = function() {
            e = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth, i = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight
        },
        l = function(t) {
            o = t
        },
        u = function(t) {
            if ("undefined" != typeof t) {
                var e = function(t, e) {
                    for (var i = t.length, n = 0; i > n; n++) {
                        var o = t[n],
                            r = e ? o : o.parentNode;
                        s(r) === !0 && a(r, o)
                    }
                };
                if (t) {
                    if ("string" != typeof t) return;
                    ("undefined" === envira_lazy_load_delay || envira_lazy_load_initial === !1 || "undefined" === envira_lazy_load_initial) && (envira_lazy_load_delay = 0), myVar = setTimeout(function() {
                        jQuery(t + " .envira-lazy > img").exists() ? e(document.querySelectorAll(t + " .envira-lazy > img"), !1) : jQuery(t + " img.envira-lazy").exists() && e(document.querySelectorAll(t + " img.envira-lazy"), !0), 1 == envira_lazy_load_initial
                    }, envira_lazy_load_delay)
                }
            }
        };
    if ("srcset" in document.createElement("img") && "undefined" != typeof window.devicePixelRatio && "undefined" != typeof window.addEventListener && "undefined" != typeof document.querySelectorAll) {
        h();
        var d = new Image;
        d.src = "data:image/webp;base64,UklGRiQAAABXRUJQVlA4IBgAAAAwAQCdASoCAAEADMDOJaQAA3AA/uuuAAA=", d.onload = d.onerror = function() {
            if (t = 2 === d.width, r) {
                var e = function() {
                        for (var t = document.querySelectorAll(".envira-lazy"), e = t.length, n = 0; e > n; n++) {
                            var o = t[n];
                            "undefined" == typeof o.responsivelyLazyObserverAttached && (o.responsivelyLazyObserverAttached = !0, i.observe(o))
                        }
                    },
                    i = new IntersectionObserver(function(t) {
                        for (var e in t) {
                            var i = t[e];
                            if (i.intersectionRatio > 0) {
                                var n = i.target;
                                if ("img" !== n.tagName.toLowerCase()) {
                                    var o = n.querySelector("img");
                                    null !== o && a(n, o)
                                } else a(n, n)
                            }
                        }
                    });
                u()
            } else var n = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || function(t) {
                    window.setTimeout(t, 1e3 / 60)
                },
                o = !0,
                s = function() {
                    o && (o = !1), n.call(null, s)
                },
                l = function() {
                    o = !0, s()
                },
                c = function() {
                    for (var t = document.querySelectorAll(".envira-lazy"), e = t.length, i = 0; e > i; i++)
                        for (var n = t[i].parentNode; n && "html" !== n.tagName.toLowerCase();) "undefined" == typeof n.responsivelyLazyScrollAttached && (n.responsivelyLazyScrollAttached = !0, n.addEventListener("scroll", l)), n = n.parentNode
                };
            var f = function() {
                if (r) var t = null;
                if (window.addEventListener("resize", function() {
                        h(), r ? (window.clearTimeout(t), t = window.setTimeout(function() {
                            u()
                        }, 300)) : l()
                    }), r ? (window.addEventListener("load", u), e()) : (window.addEventListener("scroll", l), window.addEventListener("load", l), c()), "undefined" != typeof MutationObserver) {
                    var i = new MutationObserver(function() {
                        r ? (e(), u()) : (c(), l())
                    });
                    i.observe(document.querySelector("body"), {
                        childList: !0,
                        subtree: !0
                    })
                }
            };
            "loading" === document.readyState ? document.addEventListener("DOMContentLoaded", f) : f()
        }
    }
    return {
        run: u,
        isVisible: s,
        setGalleryClass: l
    }
}();