<header>
	<div id="header-container">
		<div class="container">
			<div class="row">
				
				<div class="col-xs-12 text-xs-right">
					<a href="" data-toggle="modal" data-target="#inicioSesion">Iniciar Sesión</a>
					<a href="" data-toggle="modal" data-target="#registroN">Registrarse</a>
				</div>

				<div class="col-xs-12 text-xs-center">
					<h2 id="titulo">Blog Megaterios</h2>
				</div>
			</div>
		</div>
	</div>
</header>

<!--modal-->

<div class="modal fade" id="inicioSesion" tabindex="-1" role="dialog" aria-labelledby="sesion" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="sesion">Inicia Tu Sesión</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php include "iniciar_sesion.php";?>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Iniciar</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="registroN" tabindex="-1" role="dialog" aria-labelledby="regis" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="regis">Inicia Tu Sesión</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php include "registrarse.php";?>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Registrase</button>
      </div>
    </div>
  </div>
</div>