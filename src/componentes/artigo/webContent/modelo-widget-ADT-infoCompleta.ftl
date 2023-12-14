<#--Esta estrutura será utilizada quando o artigo for aberto em uma pagina de exibição-->

<#assign AssetCategoryLocalService= serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService")/>
<#assign site_url = htmlUtil.escape(layout.getGroup().getDisplayURL(themeDisplay, !layout.isPublicLayout())) />
<div class="ADTselector mx-auto">
    <#if entries?has_content>
	<#list entries as entry>
		<#assign assetRenderer = entry.getAssetRenderer() />
		<#assign article =  assetRenderer.getArticle()/>
		<#assign journalArticle = assetRenderer.getAssetObject() />
		<#assign templateKey = journalArticle.DDMTemplateKey />
		<#assign urlTitle = article.urlTitle />
		<#if currentURL?contains(urlTitle)>
                	<#if entry?has_content>
		            <@liferay_journal["journal-article"] 
			          articleId=journalArticle.getArticleId() 
			          groupId=entry.getGroupId() 
			          ddmTemplateKey="templateKey"/>
                	</#if>
		</#if>
	</#list>
    </#if>
</div>
