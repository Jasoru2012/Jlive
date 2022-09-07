<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
<div>
    <@l.logout />
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Enter the message" />
        <input type="text" name="tag" placeholder="Tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Enter</button>
    </form>
</div>
<div>Messages list</div>
<form method="post" action="filter">
    <input type="text" name="filter">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit">Search</button>
</form>
<#list messages as mesage>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
    <#else>
        No message
</#list>
</@c.page>
