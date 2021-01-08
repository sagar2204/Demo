({
    handleKeyUp: function (cmp, evt) {
        
            cmp.set('v.issearching', true);
            setTimeout(function() {
                cmp.set('v.issearching', false);
            }, 1000); 
        
    }
});