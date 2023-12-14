<div class="fragment_1 row w-100">
    [#list 1..configuration.numbersCards as cur_numbersCard]
        <#-- Imagens do card -->
        <div class="card col-md-4 mx-auto" id="${cur_numbersCard_index}">
            <lfr-editable class="card-img" id="${cur_numbersCard_index}-image"  type="image">
                <img class="card-img-top" src="..." alt="Card image cap">
            </lfr-editable>
            <#-- ------------------------------------- -->
            <#-- Informações de texto do banner -->
            <div class="card-body ">
                <lfr-editable id="${cur_numbersCard_index}-title"  type="text">
                    <h5 class="card-title" style="font-size:20px; font-weight:700;">Título</h5>
                </lfr-editable>
                <lfr-editable id="${cur_numbersCard_index}-desc desc" type="rich-text">
                    <p type="text" type="rich-text" class="text-desc text-truncate" style="font-family:Sans-serif; font-weight: 500;">
                    	This is editable text that I can make bold or italic! 
                    </p>
                </lfr-editable>
		<div class=" d-flex justify-content-end p-2 ">
			<a href="#" class="btn bg-${configuration.buttonColor.cssClass}">${configuration.textoBotao}</a>
		</div>
            </div>	
            <#-- ------------------------------------- -->		
        </div>	
    [/#list]
</div>
