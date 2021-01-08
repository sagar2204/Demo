<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>sampl</fullName>
        <ccEmails>sagarkakkar391@gmail.com</ccEmails>
        <description>sampl</description>
        <protected>false</protected>
        <recipients>
            <recipient>sagar.kakkar@grazitti.co.uk</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportSelfServiceNewLoginandPassword</template>
    </alerts>
    <fieldUpdates>
        <fullName>update_status</fullName>
        <field>Status</field>
        <literalValue>Activated</literalValue>
        <name>update status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Contract Activation</fullName>
        <actions>
            <name>sampl</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>update_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(SBQQ__Opportunity__r.StageName, &quot;Closed Won&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
