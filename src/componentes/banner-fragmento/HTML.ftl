<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
<div class="bannerSelector d-flex overflow-hidden banner-selector w-100 justify-content-center" style="background-color:${configuration.backgroundColor.rgbValue}">   
	<div class="d-flex w-100 mx-auto">
	    <div class="banner-info align-self-center ml-2 w-50 pl-4">
		    <div class="mx-auto">
            <#-- Informações de texto do banner -->
                <p class="texto-principal">${configuration.textoPrincipal}</p>
                <p class="texto-secundario" style="font-size: 24px; color: white; font-family: Helvetica Neue;">${configuration.textoSecundario}</p>
                <hr class="my-4">
                <a class="btn btnLink  btn-lg " href="#" role="button">${configuration.textoBotao}</a>
            <#-- ------------------------------------- -->
            </div>
		</div>
        <#-- Imagens do banner -->
	    <div class="banner-img overflow-hidden w-100 h-100 d-flex align-items-center justify-content-center" >
        <#-- Imagem grande do banner, para versões web -->
			<lfr-editable id="banner-image-editable img-small"  type="image">
                <img class="banner-img-small ml-4 w-75 object-fit-cover d-block d-sm-none" src="..." alt="Card image cap">
            </lfr-editable>
            <#-- Imagem pequena do banner, para versões mobile -->
	        <lfr-editable id="banner-image-editable img-big"  type="image">
                <img class="banner-img-big   object-fit-cover d-none d-sm-block" src="..." alt="Card image cap">
            </lfr-editable>
	    </div>
        <#-- ------------------------------------- -->
	</div>
</div>

