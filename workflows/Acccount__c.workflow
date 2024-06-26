<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EmailRama</fullName>
        <description>EmailRama</description>
        <protected>false</protected>
        <recipients>
            <recipient>rama.rimmalapudi@flexagon.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>AccountNotificationAction</fullName>
        <field>OwnerId</field>
        <lookupValue>rama.rimmalapudi@flexagon.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>AccountNotificationAction</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AccountNotificationAction2</fullName>
        <field>OwnerId</field>
        <lookupValue>rama.rimmalapudi@flexagon.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>AccountNotificationAction2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>AccountNotification</fullName>
        <actions>
            <name>EmailRama</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Acccount__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <criteriaItems>
            <field>Acccount__c.Active__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AccountNotification1</fullName>
        <actions>
            <name>AccountNotificationAction</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Acccount__c.Name</field>
            <operation>equals</operation>
            <value>Rama</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>AccountNotification2</fullName>
        <actions>
            <name>EmailRama</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AccountNotificationAction2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Acccount__c.Name</field>
            <operation>equals</operation>
            <value>Rama</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
