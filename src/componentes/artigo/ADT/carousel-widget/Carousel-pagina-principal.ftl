<#--Esta estrutura será utilizada na pagina home contendo o banner de notícias-->

<#assign AssetCategoryLocalService= serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService")/>
<#assign site_url = htmlUtil.escape(layout.getGroup().getDisplayURL(themeDisplay, !layout.isPublicLayout())) />

<div class="ADTcontainer">
    <div class="w-100 ADTcard d-flex justify-content-center">
        <div class="primary mx-1">
	    <#if entries?has_content>
                <#list entries as entry>
                <#--Este código fará a captura das informações úteis para a composição do componente -->
		    <#assign EntryId=entry.getEntryId()/>
                    <#assign AssetRenderer=entry.getAssetRenderer()/>
                    <#assign DDMFormFieldValuesMap=AssetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap()/>
                    <#assign DDMFormFieldsMap=AssetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true)  />
                    <#assign article =  AssetRenderer.getArticle()/>
                    <#assign urlTitle = article.urlTitle />
		    <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                    <#-- ----------------------------------------------- -->
                    <#-- Este código irá filtrar os artigos e para que sejam dispostos os artigos com a Tag 'Primário' -->
                        <#if entryCat.getName()?contains('Primário')>
                            <div class="principalNews Focus h-100">
                                <a class=" text-decoration-none text-dark position-relative  w-100 h-100" 
                                href="${site_url}/web/guest/-/${urlTitle}" 
                                 data-senna-off="true">
                                     <#assign imgField=DDMFormFieldsMap['imagem'].name  />
                                     <#assign img=DDMFormFieldValuesMap[imgField][0].getValue().getString(locale)/>
                                     <#assign imagem=img?eval/>
                                     <img class= "w-100" src="${imagem.url}" alt=""/>
                                     <div class="bannerInformation w-100 position-absolute p-4">
                                        <div class="subject-tag">
                                        <#--Este código irá capturar as categorias atribuidas para o artigo e irá adicionar um CSS exclusivo para cada tag de categoria-->
                                            <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                                                <#if entryCat.getName() = 'Política'>
                                                    <span class='politica p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Economia'>
                                                    <span class='economia p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Esporte'>
                                                    <span class='esporte p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Clima'>
                                                    <span class='clima p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Cultura Pop'>
                                                    <span class='cultura-pop p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                            </#list>
                                        <#-- ------------------------------------- -->
                                        </div>
                                        <div class=" autorInformation d-flex">
                                            <p class="autor-name mr-2 my-0">
                                                <#assign autorField=DDMFormFieldsMap['autor'].name  />
                                                <#assign autor=DDMFormFieldValuesMap[autorField][0].getValue(). getString(locale)/>
                                                ${autor}
                                            </p>
                                            <p class="date my-0">
                                                <#assign dataField=DDMFormFieldsMap['data'].name  />
                                                <#assign data=DDMFormFieldValuesMap[dataField][0].getValue().getString(locale)/>
                                                ${data}
                                            </p>
                                        </div>
                                        <p class="title font-weight-bold">
                                            <#assign titleField=DDMFormFieldsMap['titulo'].name  />
                                            <#assign title=DDMFormFieldValuesMap[titleField][0].getValue().getString(locale)/>
                                            ${title}
                                        </p>
                                    </div>
                                </a>
			     </div>
                        </#if>
		     </#list>	     
                </#list>
            </#if>
        </div>
        <div class="side-container  d-none d-lg-block d-xl-block">
	    <div class="secundary mx-1">
                <#if entries?has_content>
                    <#list entries as entry>
                    <#--Este código fará a captura das informações úteis para a composição do componente -->
                        <#assign EntryId=entry.getEntryId()/>
                        <#assign AssetRenderer=entry.getAssetRenderer()/>
                        <#assign DDMFormFieldValuesMap=AssetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap()/>
                        <#assign DDMFormFieldsMap=AssetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true)  />
                        <#assign article =  AssetRenderer.getArticle()/>
                        <#assign urlTitle = article.urlTitle />
                        <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                        <#-- ------------------------------------- -->
                        <#-- Este código irá filtrar os artigos e para que sejam dispostoa os artigos com a Tag 'Secundário' -->
                            <#if entryCat.getName()?contains('Secundário')>
                                <div class="secundaryNews overflow-hidden Focus">
                                    <a class=" text-decoration-none text-dark position-relative   overflow-hidden w-100 h-50" href="${site_url}/web/guest/-/${urlTitle}" data-senna-off="true">
                                        <#assign imgField=DDMFormFieldsMap['imagem'].name  />
                                        <#assign img=DDMFormFieldValuesMap[imgField][0].getValue().getString(locale)/>
                                        <#assign imagem=img?eval/>
                                        <img class= "w-100" src="${imagem.url}" alt=""/>
                                        <div class="bannerInformation w-100 position-absolute p-4">
                                            <div class="subject-tag">
                                            <#--Este código irá capturar as categorias atribuidas para o artigo e irá adicionar um CSS exclusivo para cada tag de categoria-->
                                                <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                                                    <#if entryCat.getName() = 'Política'>
                                                        <span class='politica p-1 rounded shadow'>${entryCat.getName()}</span>
                                                    </#if>
                                                    <#if entryCat.getName() = 'Economia'>
                                                        <span class='economia p-1 rounded'>${entryCat.getName()}</span>
                                                    </#if>
                                                    <#if entryCat.getName() = 'Esporte'>
                                                        <span class='esporte p-1 rounded'>${entryCat.getName()}</span>
                                                    </#if>
                                                    <#if entryCat.getName() = 'Clima'>
                                                        <span class='clima p-1 rounded'>${entryCat.getName()}</span>
                                                    </#if>
                                                    <#if entryCat.getName() = 'Cultura Pop'>
                                                        <span class='cultura-pop p-1 rounded'>${entryCat.getName()}</span>
                                                    </#if>
                                                </#list>
                                            <#-- ------------------------------------- -->
                                            </div>
                                            <p class="title font-weight-bold">
                                                <#assign titleField=DDMFormFieldsMap['titulo'].name  />
                                                <#assign title=DDMFormFieldValuesMap[titleField][0].getValue().getString(locale)/>
                                                ${title}
                                            </p>
                                        </div>
                                    </a>
                                </div>
                            </#if>
                        </#list>
                    </#list>
                </#if>
	        </div>
		<div class="tertiary overflow-hidden m-1">
                  <#if entries?has_content>
                    <#list entries as entry>
                    <#--Este código fará a captura das informações úteis para a composição do componente -->
			<#assign EntryId=entry.getEntryId()/>
                        <#assign AssetRenderer=entry.getAssetRenderer()/>
                        <#assign DDMFormFieldValuesMap=AssetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap()/>
                        <#assign DDMFormFieldsMap=AssetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true)  />
                        <#assign article =  AssetRenderer.getArticle()/>
                        <#assign urlTitle = article.urlTitle />
                        <#-- ------------------------------------- -->
			<#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                         <#-- Este código irá filtrar os artigos e para que sejam dispostos os artigos com a Tag 'Terciário' -->
                            <#if entryCat.getName()?contains('Terciário')>
                                <div class="tertiaryNews Focus">
                                    <a class=" text-decoration-none text-dark position-relative   overflow-hidden w-100 h-100" href="${site_url}/web/guest/-/${urlTitle}" data-senna-off="true">
                                        <#assign imgField=DDMFormFieldsMap['imagem'].name  />
                                        <#assign img=DDMFormFieldValuesMap[imgField][0].getValue().getString(locale)/>
                                        <#assign imagem=img?eval/>
                                        <img class= "w-100" src="${imagem.url}" alt=""/>
                                        <div class="bannerInformation w-100 position-absolute p-4">
                                            <div class="subject-tag">
                                            <#--Este código irá capturar as categorias atribuidas para o artigo e irá adicionar um CSS exclusivo para cada tag de categoria-->
                                                <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                                                    <#if entryCat.getName() = 'Política'>
                                                        <span class='politica p-1 rounded'>${entryCat.getName()}</span>
                                                    </#if>
                                                    <#if entryCat.getName() = 'Economia'>
                                                        <span class='economia p-1 rounded'>${entryCat.getName()}</span>
                                                    </#if>
                                                    <#if entryCat.getName() = 'Esporte'>
                                                        <span class='esporte p-1 rounded'>${entryCat.getName()}</span>
                                                    </#if>
                                                    <#if entryCat.getName() = 'Clima'>
                                                        <span class='clima p-1 rounded'>${entryCat.getName()}</span>
                                                    </#if>
                                                    <#if entryCat.getName() = 'Cultura Pop'>
                                                        <span class='cultura-pop p-1 rounded'>${entryCat.getName()}</span>
                                                    </#if>
                                                </#list>
                                            <#-- ------------------------------------- -->
                                            </div>
                                            <p class="title font-weight-bold">
                                                <#assign titleField=DDMFormFieldsMap['titulo'].name  />
                                                <#assign title=DDMFormFieldValuesMap[titleField][0].getValue().getString(locale)/>
                                                ${title}
                                            </p>
                                        </div>
                                    </a>
				</div>
                            </#if>
                        </#list>
                    </#list>
                </#if>	
	        </div>
	    </div>
    </div>
    <#-- Este Componente irá aparecer apenas quando a pagina estiver com  767px de largura -->
	<div class="side-container-small overfow-hidden d-flex d-md-none d-lg-none d-xl-none mx-auto mt-1">
	  <div class="secundary overflow-hidden w-50">
            <#if entries?has_content>
                <#list entries as entry>
                <#--Este código fará a captura das informações úteis para a composição do componente -->
                    <#assign EntryId=entry.getEntryId()/>
                    <#assign AssetRenderer=entry.getAssetRenderer()/>
                    <#assign DDMFormFieldValuesMap=AssetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap()/>
                    <#assign DDMFormFieldsMap=AssetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true)  />
                    <#assign article =  AssetRenderer.getArticle()/>
                    <#assign urlTitle = article.urlTitle />
                    <#-- ------------------------------------- -->
                    <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                    <#-- Este código irá filtrar os artigos e para que sejam dispostos os artigos com a Tag 'Secundário' -->
                        <#if entryCat.getName()?contains('Secundário')>
                            <div class="secundaryNews overflow-hidden Focus">
                                <a class=" text-decoration-none text-dark position-relative   overflow-hidden w-100 h-50" href="${site_url}/web/guest/-/${urlTitle}" data-senna-off="true">
                                    <#assign imgField=DDMFormFieldsMap['imagem'].name  />
                                    <#assign img=DDMFormFieldValuesMap[imgField][0].getValue().getString(locale)/>
                                    <#assign imagem=img?eval/>
                                    <img class= "w-100" src="${imagem.url}" alt=""/>
                                    <div class="bannerInformation w-100 position-absolute p-4">
                                        <div class="subject-tag">
                                        <#--Este código irá capturar as categorias atribuidas para o artigo e irá adicionar um CSS exclusivo para cada tag de categoria-->
                                            <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                                                <#if entryCat.getName() = 'Política'>
                                                    <span class='politica p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Economia'>
                                                    <span class='economia p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Esporte'>
                                                    <span class='esporte p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Clima'>
                                                    <span class='clima p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Cultura Pop'>
                                                    <span class='cultura-pop p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                            </#list>
                                            <#-- ------------------------------------- -->
                                        </div>
                                        <p class="title font-weight-bold">
                                            <#assign titleField=DDMFormFieldsMap['titulo'].name  />
                                            <#assign title=DDMFormFieldValuesMap[titleField][0].getValue().getString(locale)/>
                                            ${title}
                                        </p>
                                    </div>
                                </a>
                            </div>
                        </#if>
                    </#list>
                </#list>
            </#if>
	    </div>
	    <div class="tertiary overflow-hidden w-50">
              <#if entries?has_content>
                <#list entries as entry>
                <#--Este código fará a captura das informações úteis para a composição do componente -->
                    <#assign EntryId=entry.getEntryId()/>
                    <#assign AssetRenderer=entry.getAssetRenderer()/>
                    <#assign DDMFormFieldValuesMap=AssetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap()/>
                    <#assign DDMFormFieldsMap=AssetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true)  />
                    <#assign article =  AssetRenderer.getArticle()/>
                    <#assign urlTitle = article.urlTitle />
                <#-- ------------------------------------- -->
		    <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                    <#-- Este código irá filtrar os artigos e para que sejam dispostos os artigos com a Tag 'Terciário' -->
                        <#if entryCat.getName()?contains('Terciário')>
                            <div class="tertiaryNews Focus">
                                <a class=" text-decoration-none text-dark position-relative   overflow-hidden w-100 h-100" href="${site_url}/web/guest/-/${urlTitle}" data-senna-off="true">
                                    <#assign imgField=DDMFormFieldsMap['imagem'].name  />
                                    <#assign img=DDMFormFieldValuesMap[imgField][0].getValue().getString(locale)/>
                                    <#assign imagem=img?eval/>
                                    <img class= "w-100" src="${imagem.url}" alt=""/>
                                    <div class="bannerInformation w-100 position-absolute p-4">
                                        <div class="subject-tag">
                                        <#--Este código irá capturar as categorias atribuidas para o artigo e irá adicionar um CSS exclusivo para cada tag de categoria-->
                                            <#list AssetCategoryLocalService.getEntryCategories(EntryId) as entryCat>
                                                <#if entryCat.getName() = 'Política'>
                                                    <span class='politica p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Economia'>
                                                    <span class='economia p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Esporte'>
                                                    <span class='esporte p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Clima'>
                                                    <span class='clima p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                                <#if entryCat.getName() = 'Cultura Pop'>
                                                    <span class='cultura-pop p-1 rounded'>${entryCat.getName()}</span>
                                                </#if>
                                            </#list>
                                        <#-- ------------------------------------- -->
                                        </div>
                                        <p class="title font-weight-bold">
                                            <#assign titleField=DDMFormFieldsMap['titulo'].name  />
                                            <#assign title=DDMFormFieldValuesMap[titleField][0].getValue().getString(locale)/>
                                            ${title}
                                        </p>
                                    </div>
                                </a>
			    </div>
                        </#if>
                    /#list>
                </#list>
            </#if>	
	</div>
    </div>
</div>
<script>
Liferay.on('allPortletsReady', () => {
  $(".primary").slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    autoplay: true,
  });
});
Liferay.on('allPortletsReady', () => {
  $(".secundary").slick({
    dots: true,
    infinite: true,
    speed: 200,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    autoplay: true,
  });
});
	Liferay.on('allPortletsReady', () => {
  $(".tertiary").slick({
    dots: true,
    infinite: true,
    speed: 200,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    autoplay: true,
  });
});
</script>
