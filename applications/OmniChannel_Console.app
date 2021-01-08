<?xml version="1.0" encoding="UTF-8"?>
<CustomApplication xmlns="http://soap.sforce.com/2006/04/metadata">
    <brand>
        <headerColor>#0070D2</headerColor>
        <shouldOverrideOrgTheme>true</shouldOverrideOrgTheme>
    </brand>
    <formFactors>Small</formFactors>
    <formFactors>Large</formFactors>
    <isNavAutoTempTabsDisabled>false</isNavAutoTempTabsDisabled>
    <isNavPersonalizationDisabled>false</isNavPersonalizationDisabled>
    <label>Omni-Channel Console</label>
    <navType>Console</navType>
    <tabs>standard-Account</tabs>
    <tabs>standard-AppLauncher</tabs>
    <tabs>standard-Case</tabs>
    <tabs>standard-Contact</tabs>
    <uiType>Lightning</uiType>
    <utilityBar>Omni_Channel_Console_UtilityBar</utilityBar>
    <workspaceConfig>
        <mappings>
            <fieldName>ParentId</fieldName>
            <tab>standard-Account</tab>
        </mappings>
        <mappings>
            <tab>standard-AppLauncher</tab>
        </mappings>
        <mappings>
            <fieldName>AccountId</fieldName>
            <tab>standard-Case</tab>
        </mappings>
        <mappings>
            <fieldName>AccountId</fieldName>
            <tab>standard-Contact</tab>
        </mappings>
    </workspaceConfig>
</CustomApplication>
