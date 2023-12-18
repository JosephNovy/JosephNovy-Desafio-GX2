<#--Esta estrutura será utilizada quando o artigo for aberto em uma pagina de exibição como artigo principal, contendo todas as informações relevantes para o usuário-->
<#assign AssetCategoryLocalService= serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService")/>
<#assign site_url = htmlUtil.escape(layout.getGroup().getDisplayURL(themeDisplay, !layout.isPublicLayout())) />
<div class="ADTselector mx-auto">
	<#if entries?has_content>
		<#list entries as entry>
			<#assign EntryId=entry.getEntryId()/>
			<#assign AssetRenderer = entry.getAssetRenderer() />
		      	<#assign article =  AssetRenderer.getArticle()/>
			<#assign DDMFormFieldValuesMap=AssetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap()/>
          		<#assign DDMFormFieldsMap=AssetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true)  />
			<#assign journalArticle = AssetRenderer.getAssetObject() />
			<#assign templateKey = journalArticle.DDMTemplateKey />
		      	<#assign urlTitle = article.urlTitle />
			<#if currentURL?contains(urlTitle)>
				<div class="container-article h-100 mx-auto">
					<#assign imgField=DDMFormFieldsMap['imagem'].name  />
              				<#assign img=DDMFormFieldValuesMap[imgField][0].getValue().getString(locale)/>
              				<#assign imagem=img?eval/>
              				<img class= "w-100 Sideimage" src="${imagem.url}" alt=""/>
					<h1 class="title px-4">
						<#assign titleField=DDMFormFieldsMap['titulo'].name  />
                				<#assign title=DDMFormFieldValuesMap[titleField][0].getValue().getString(locale)/>
                				${title}
					</h1>
					<div class=" banner-information w-100 h-100 p-4">
						<div class=" autor-information w-100">
							<p class="summary">
								<#assign summaryField=DDMFormFieldsMap['textoresumo'].name  />
                    						<#assign summary=DDMFormFieldValuesMap[summaryField][0].getValue().getString(locale)/>
                     						${summary}
							</p>
							<div class="d-flex">
								<#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                       	 						<#if entryCat.getName() = 'Política'>
                          							<span class='politica p-1 mr-1 rounded'>${entryCat.getName()}</span>
                        						</#if>
                        						<#if entryCat.getName() = 'Economia'>
                          							<span class='economia p-1 mr-1 rounded'>${entryCat.getName()}</span>
                        						</#if>
                        						<#if entryCat.getName() = 'Esporte'>
                         	 						<span class='esporte p-1 mr-1 rounded'>${entryCat.getName()}</span>
                        						</#if>
                        						<#if entryCat.getName() = 'Clima'>
                          							<span class='clima p-1 mr-1 rounded'>${entryCat.getName()}</span>
                        						</#if>
                        						<#if entryCat.getName() = 'Cultura Pop'>
                          							<span class='cultura-pop p-1 mr-1 rounded'>${entryCat.getName()}</span>
                        						</#if>
                      						</#list>
							</div>
							<div class="autor-info d-flex ">
								<p class="m-0 mr-4">
									<#assign autorField=DDMFormFieldsMap['autor'].name  />
                      							<#assign autor=DDMFormFieldValuesMap[autorField][0].getValue(). getString(locale)/>
                      							${autor}
								</p>
								<p class="m-0">
									<#assign dataField=DDMFormFieldsMap['data'].name  />
                      							<#assign data=DDMFormFieldValuesMap[dataField][0].getValue().getString(locale)/>
                       							${data}
								</p>
							</div>
							<p>
	   		              				<#assign textField=DDMFormFieldsMap['textoprincipal'].name  />
                      						<#assign textPrimary=DDMFormFieldValuesMap[textField][0].getValue().getString(locale)/>
                       						${textPrimary}
		             				</p>
						</div>
					</div>
				</div>
			</#if>
	    	</#list>
   	</#if>
</div>
