({
    doInit:function(component,event,helper){
        helper.getData(component,event,helper) 
    },
    SubmitCase:function(component, event, helper) {
     
        var spinner = cmp.find("mySpinner");
        $A.util.toggleClass(spinner, "slds-hide");
 
        
        helper.CreateCase(component, event, helper);
        
    },
    CancelBtn:function(component,event,helper){
        window.history.back();
    }
    ,	navigatetohome: function (component, event, helper) {
        
        helper.gotoURL(component,"/Home");   
    },	navigatetocases : function (component, event, helper) {
        
        helper.gotoURL(component,"/casepage");   
    },
      toggle: function (cmp, event) {
        var spinner = cmp.find("mySpinner");
        $A.util.toggleClass(spinner, "slds-hide");
    }
    
})