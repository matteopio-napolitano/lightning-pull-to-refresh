({
    afterRender: function (component, helper) {
        this.superAfterRender();

        try {
            window.scrollTo(0, 0);
        } catch(e) {
            console.log(e);
        }

        var pullToRefreshEnabled = component.get('v.pullToRefreshEnabled');
        console.log('pullToRefreshEnabled?', pullToRefreshEnabled);
        if (pullToRefreshEnabled) {
            var targetEl = component.find("mainContainer").getElement();
            targetEl.addEventListener("touchmove", helper.scrollStopPropagation, true);
        }
    },
})
