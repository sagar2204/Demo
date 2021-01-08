<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>sampl</fullName>
        <ccEmails>sagar.kakkar@grazitti.com</ccEmails>
        <description>sampl</description>
        <protected>false</protected>
        <recipients>
            <recipient>insightssecurity@00d2w000008tydxeac.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportSelfServiceNewLoginandPassword</template>
    </alerts>
    <alerts>
        <fullName>sample</fullName>
        <ccEmails>sagarkakkar391@gmail.com</ccEmails>
        <ccEmails>maninderpal.singh@grazitti.com</ccEmails>
        <description>sample</description>
        <protected>false</protected>
        <recipients>
            <recipient>sagar.kakkar@grazitti.com.dev</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportSelfServiceNewLoginandPassword</template>
    </alerts>
    <fieldUpdates>
        <fullName>Contract_Activation</fullName>
        <field>Status</field>
        <literalValue>Activated</literalValue>
        <name>Contract Activation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Forecast_renewal</fullName>
        <field>SBQQ__RenewalForecast__c</field>
        <literalValue>1</literalValue>
        <name>Forecast renewal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>contract_active</fullName>
        <field>Status</field>
        <literalValue>Activated</literalValue>
        <name>contract active</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>new_val</fullName>
        <field>SBQQ__RenewalForecast__c</field>
        <literalValue>1</literalValue>
        <name>new val</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Contract activation</fullName>
        <actions>
            <name>sample</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>contract_active</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(SBQQ__Opportunity__r.StageName, &quot;Closed Won&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Renewal Opp on contract Activation</fullName>
        <actions>
            <name>Forecast_renewal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Status ) &amp;&amp; ISPICKVAL(Status, &quot;Activated&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
