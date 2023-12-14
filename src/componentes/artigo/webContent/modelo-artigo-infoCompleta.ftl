<#--Esta estrutura será utilizada quando o artigo for aberto em uma pagina de exibição~como artigo principal, contendo todas as informações relevantes para o usuário-->

<div class="container-article h-100 mx-auto">
 	<#if (imagem.getData())?? && imagem.getData() != "">
   		<div class="text-center mb-4">
	 		<img class= "image-article rounded-lg shadow" alt="${imagem.getAttribute("alt")}" data-fileentryid="${imagem.getAttribute("fileEntryId")}" src="${imagem.getData()}" />
	 	</div>
 	</#if>
 	<#if (titulo.getData())??>
 		<h1 class="title px-4">
			${titulo.getData()}
 		</h1>
 	</#if>
 	<div class=" banner-information w-100 h-100 p-4">
   		<div class=" autor-information w-100">
			<#if (textoresumo.getData())??>
				<p class="summary">
					${textoresumo.getData()}
				</p>
    		</#if>	
		<div class="autor-info d-flex ">
			<#if (autor.getData())??>
				<p class="m-0 mr-4">
					${autor.getData()}
				</p>
   			</#if>
	 		<#if (data.getData())??>
	  			<p class="m-0">
	    			${data.getData()}
				</p>
   			</#if>
	 	</div>
	</div>
	<#if (textoprincipal.getData())??>
		<p>
	   		${textoprincipal.getData()}
		</p>
   	</#if>
</div>
