window.lazyLoadOptions = [
    {
        elements_selector:
            "img[data-lazy-src],.rocket-lazyload,iframe[data-lazy-src]",
        data_src: "lazy-src",
        data_srcset: "lazy-srcset",
        data_sizes: "lazy-sizes",
        class_loading: "lazyloading",
        class_loaded: "lazyloaded",
        threshold: 300,
        callback_loaded: function (element) {
            if (
                element.tagName === "IFRAME" &&
                element.dataset.rocketLazyload == "fitvidscompatible"
            ) {
                if (element.classList.contains("lazyloaded")) {
                    if (typeof window.jQuery != "undefined") {
                        if (jQuery.fn.fitVids) {
                            jQuery(element).parent().fitVids();
                        }
                    }
                }
            }
        },
    },
    {
        elements_selector: ".rocket-lazyload",
        data_src: "lazy-src",
        data_srcset: "lazy-srcset",
        data_sizes: "lazy-sizes",
        class_loading: "lazyloading",
        class_loaded: "lazyloaded",
        threshold: 300,
    },
];
window.addEventListener(
    "LazyLoad::Initialized",
    function (e) {
        var lazyLoadInstance = e.detail.instance;
        if (window.MutationObserver) {
            var observer = new MutationObserver(function (mutations) {
                var image_count = 0;
                var iframe_count = 0;
                var rocketlazy_count = 0;
                mutations.forEach(function (mutation) {
                    for (var i = 0; i < mutation.addedNodes.length; i++) {
                        if (
                            typeof mutation.addedNodes[i]
                                .getElementsByTagName !== "function"
                        ) {
                            continue;
                        }
                        if (
                            typeof mutation.addedNodes[i]
                                .getElementsByClassName !== "function"
                        ) {
                            continue;
                        }
                        images = mutation.addedNodes[i].getElementsByTagName(
                            "img"
                        );
                        is_image = mutation.addedNodes[i].tagName == "IMG";
                        iframes = mutation.addedNodes[i].getElementsByTagName(
                            "iframe"
                        );
                        is_iframe = mutation.addedNodes[i].tagName == "IFRAME";
                        rocket_lazy = mutation.addedNodes[
                            i
                        ].getElementsByClassName("rocket-lazyload");
                        image_count += images.length;
                        iframe_count += iframes.length;
                        rocketlazy_count += rocket_lazy.length;
                        if (is_image) {
                            image_count += 1;
                        }
                        if (is_iframe) {
                            iframe_count += 1;
                        }
                    }
                });
                if (
                    image_count > 0 ||
                    iframe_count > 0 ||
                    rocketlazy_count > 0
                ) {
                    lazyLoadInstance.update();
                }
            });
            var b = document.getElementsByTagName("body")[0];
            var config = {
                childList: !0,
                subtree: !0,
            };
            observer.observe(b, config);
        }
    },
    !1
);