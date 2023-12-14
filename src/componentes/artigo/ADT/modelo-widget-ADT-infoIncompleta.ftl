<#--Esta estritura será utilizada quando o artigo for aberto em uma pagina de exibição compondo os links na lateral da página, para que o usuário posso acessar novos artigos-->

<#assign AssetCategoryLocalService= serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService")/>
<#assign site_url = htmlUtil.escape(layout.getGroup().getDisplayURL(themeDisplay, !layout.isPublicLayout())) />
<div class="ADTcard-side ml-4 d-none d-sm-none d-md-none d-lg-block">
	<div class="w-100 h-100 SideADTcontainer d-flex justify-content-center row ">
		<h5 class="d-none d-sm-block">
	        Noticiais mais recentes:
        </h5>
        <div class="px-2 h-100 my-auto">
			<#if entries?has_content>
                <#list entries as entry>
                <#--Este código fará a captura das informações úteis para a composição do componente -->
					<#assign EntryId=entry.getEntryId()/>
                    <#assign AssetRenderer=entry.getAssetRenderer()/>
                    <#assign DDMFormFieldValuesMap=AssetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap()/>
                    <#assign DDMFormFieldsMap=AssetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true)  />
                    <#assign article =  AssetRenderer.getArticle()/>
                    <#assign urlTitle = article.urlTitle />
                    <#-- ----------------------------------------------- -->
                    <#-- Este código irá filtrar os artigos e para que seja disposto os artigos menos o artigo principal da pagina de exibição -->
					<#if !currentURL?contains(urlTitle)>
                        <div class=" h-50">
                            <a class=" text-decoration-none text-dark position-relative  w-100 h-100" href="${site_url}/web/guest/-/${urlTitle}" data-senna-off="true">
                                <#assign imgField=DDMFormFieldsMap['imagem'].name  />
                                <#assign img=DDMFormFieldValuesMap[imgField][0].getValue().getString(locale)/>
                                <#assign imagem=img?eval/>
                                <img class= "h-100 w-100 Sideimage" src="${imagem.url}" alt=""/>
                                <div class="SidebannerInformation w-100 h-100 position-absolute p-0 mt-1">
                                    <div class="Sidesubject-tag">
                                <#--Este código irá capturar as categorias de atribuidas para o artigo e irá adicionar um CSS exclusivo para cada tag de categoria-->
                                        <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                                            <#if entryCat.getName() = 'Política'>
                                                <span class='politica p-1 rounded shadow'>${entryCat.getName()}</span>
                                            </#if>
                                            <#if entryCat.getName() = 'Economia'>
                                                <span class='economia p-1 rounded shadow'>${entryCat.getName()}</span>
                                            </#if>
                                            <#if entryCat.getName() = 'Esporte'>
                                                <span class='esporte p-1 rounded shadow'>${entryCat.getName()}</span>
                                            </#if>
                                            <#if entryCat.getName() = 'Clima'>
                                                <span class='clima p-1 rounded shadow'>${entryCat.getName()}</span>
                                            </#if>
                                            <#if entryCat.getName() = 'Cultura Pop'>
                                                <span class='cultura-pop p-1 rounded shadow'>${entryCat.getName()}</span>
                                            </#if>
                                        </#list>
                                        <#-- ------------------------------------- -->
                                    </div>
                                    <p class="Sidetitle font-weight-bold">
                                        <#assign titleField=DDMFormFieldsMap['titulo'].name  />
                                        <#assign title=DDMFormFieldValuesMap[titleField][0].getValue().getString(locale)/>
                                        ${title}
                                    </p>
                                </div>
                            </a>
						</div>
					</#if>
                </#list>
            </#if>
        </div>
    </div>
</div>
