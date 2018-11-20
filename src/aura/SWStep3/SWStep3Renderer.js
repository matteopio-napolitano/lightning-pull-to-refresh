({
    afterRender: function (component, helper) {
        this.superAfterRender();

        try {
            window.scrollTo(0, 0);
        } catch(e) {
            console.log(e);
        }

        var targetEl = component.find("mainContainer").getElement();
        targetEl.addEventListener("touchmove", helper.scrollStopPropagation, true);
    },
})
