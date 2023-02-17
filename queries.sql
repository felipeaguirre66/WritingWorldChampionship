
--- Full outer join all tables into one.

USE Chasco

SELECT

	u.idUsuario as USUARIOS_idUsuario,
	u.Correo as USUARIOS_Correo,
	u.Apellido as USUARIOS_Apellido,
	u.Nombre as USUARIOS_Nombre,
	u.FechaNacimiento as USUARIOS_FechaNacimiento,
	u.Genero as USUARIOS_Genero,
	u.IdPais as USUARIOS_IdPais,
	u.Ciudad as USUARIOS_Ciudad,
	u.NroDocumento as USUARIOS_NroDocumento,
	u.Pass as USUARIOS_Pass,
	u.Bloqueado as USUARIOS_Bloqueado,
	u.RequiereValidacion as USUARIOS_RequiereValidacion,
	u.CodigoValidacion as USUARIOS_CodigoValidacion,
	u.CodigoRecuperaPass as USUARIOS_CodigoRecuperaPass,
	u.IntentosFallidos as USUARIOS_IntentosFallidos,
	u.IdUsuarioCategoria as USUARIOS_IdUsuarioCategoria,
	u.IdUsuarioSubCategoria as USUARIOS_IdUsuarioSubCategoria,
	u.IdIdioma as USUARIOS_IdIdioma,
	u.FechaAlta as USUARIOS_FechaAlta,
	u.YYYYEquiposCreados as USUARIOS_YYYYEquiposCreados,
	u.CantidadEquiposCreados as USUARIOS_CantidadEquiposCreados,
	u.YYYYEquiposUnido as USUARIOS_YYYYEquiposUnido,
	u.CantidadEquiposUnido as USUARIOS_CantidadEquiposUnido,
	u.FechaNotificacionInscripcionMundial as USUARIOS_FechaNotificacionInscripcionMundial,
	u.adminMundial as USUARIOS_adminMundial,
	u.CorreoTutor as USUARIOS_CorreoTutor,
	u.DiaRecalculoCategoria as USUARIOS_DiaRecalculoCategoria,
	u.Biografia as USUARIOS_Biografia,
	u.MiembroEquipoMundial as USUARIOS_MiembroEquipoMundial,
	u.MiembroEquipoMundialOrden as USUARIOS_MiembroEquipoMundialOrden,
	u.MiembroEquipoTarea as USUARIOS_MiembroEquipoTarea,
	u.TestimonioActivo as USUARIOS_TestimonioActivo,
	u.TestimonioActivoOrden as USUARIOS_TestimonioActivoOrden,
	u.TestimonioTitulo as USUARIOS_TestimonioTitulo,
	u.TestimonioTexto as USUARIOS_TestimonioTexto,
	u.MiembroStaffJurado as USUARIOS_MiembroStaffJurado,
	u.IdPais_Nacimiento as USUARIOS_IdPais_Nacimiento,
	u.IdIdioma_Materno as USUARIOS_IdIdioma_Materno,
	u.EducacionFormalYYYY as USUARIOS_EducacionFormalYYYY,
	u.AceptoRecibirInfo as USUARIOS_AceptoRecibirInfo,

	------------------------------------------------------------------------------------------------

	mu.idMundialUsuario as MundialUsuario_idMundialUsuario,
	mu.IdMundial as MundialUsuario_IdMundial,
	mu.idUsuario as MundialUsuario_idUsuario,
	mu.fechaInscripcion as MundialUsuario_fechaInscripcion,
	mu.fechabaja as MundialUsuario_fechabaja,
	mu.fechaNotificacionInicioMundial as MundialUsuario_fechaNotificacionInicioMundial,
	mu.Rating as MundialUsuario_Rating,
	mu.baja as MundialUsuario_baja,
	mu.bajaPorNoEscribir as MundialUsuario_bajaPorNoEscribir,
	mu.Goles as MundialUsuario_Goles,

	------------------------------------------------------------------------------------------------

	eu.idEquipoUsuario as EquipoUsuarios_idEquipoUsuario,
	eu.idEquipo as EquipoUsuarios_idEquipo,
	eu.idUsuario as EquipoUsuarios_idUsuario,
	eu.NoConfirmado as EquipoUsuarios_NoConfirmado,
	eu.fechaIngreso as EquipoUsuarios_fechaIngreso,
	eu.inactivo as EquipoUsuarios_inactivo,
	eu.CodigoAceptacion as EquipoUsuarios_CodigoAceptacion,
	eu.CodigoRechazo as EquipoUsuarios_CodigoRechazo,
	eu.FechaAsignacionAutomatica as EquipoUsuarios_FechaAsignacionAutomatica,
	eu.FechaUsuarioNoEscribe as EquipoUsuarios_FechaUsuarioNoEscribe,

	------------------------------------------------------------------------------------------------

	ep.idUsuarioEmergenciaPass as EmergenciaPass_idUsuarioEmergenciaPass,
	ep.idUsuario as EmergenciaPass_idUsuario,
	ep.Correo as EmergenciaPass_Correo,
	ep.Pass as EmergenciaPass_Pass,
	ep.idUsuarioSolicitud as EmergenciaPass_idUsuarioSolicitud,
	ep.FechaSolicitud as EmergenciaPass_FechaSolicitud,
	ep.baja as EmergenciaPass_baja,

	------------------------------------------------------------------------------------------------

	e.idEquipo as Equipos_idEquipo,
	e.NombreEquipo as Equipos_NombreEquipo,
	e.idUsuarioCapitan as Equipos_idUsuarioCapitan,
	e.idEquipoCategoria as Equipos_idEquipoCategoria,
	e.idDivision as Equipos_idDivision,
	e.idZona as Equipos_idZona,
	e.Rating as Equipos_Rating,
	e.Jugadores as Equipos_Jugadores,
	e.inactivo as Equipos_inactivo,
	e.migrado as Equipos_migrado,
	e.FechaCreacionAutomatica as Equipos_FechaCreacionAutomatica,
	e.FechaCreacion as Equipos_FechaCreacion,

	------------------------------------------------------------------------------------------------

	ei.idEquipoInvitado as EquipoInvitados_idEquipoInvitado,
	ei.idEquipo as EquipoInvitados_idEquipo,
	ei.Correo as EquipoInvitados_Correo,
	ei.fechaInvitacion as EquipoInvitados_fechaInvitacion,
	ei.CodigoAceptacion as EquipoInvitados_CodigoAceptacion,
	ei.CodigoRechazo as EquipoInvitados_CodigoRechazo,
	ei.fechaAceptacion as EquipoInvitados_fechaAceptacion,
	ei.fechaRechazo as EquipoInvitados_fechaRechazo,
	ei.baja as EquipoInvitados_baja,
	ei.procesado as EquipoInvitados_procesado,

	------------------------------------------------------------------------------------------------

	z.idZona as Zonas_idZona,
	z.CodZona as Zonas_CodZona,
	z.KeyNombreZona as Zonas_KeyNombreZona,
	z.inactivo as Zonas_inactivo,

	------------------------------------------------------------------------------------------------

	ec.idEquipoCategoria as EquipoCategorias_idEquipoCategoria,
	ec.KeyNombreCategoria as EquipoCategorias_KeyNombreCategoria,
	ec.EdadDesde as EquipoCategorias_EdadDesde,
	ec.EdadHasta as EquipoCategorias_EdadHasta,
	ec.GrupoValidacion as EquipoCategorias_GrupoValidacion,
	ec.inactivo as EquipoCategorias_inactivo,

	------------------------------------------------------------------------------------------------

	mj.IdMundialJurado as MundialJurados_IdMundialJurado,
	mj.IdMundial as MundialJurados_IdMundial,
	mj.idUsuarioJurado as MundialJurados_idUsuarioJurado,
	mj.instancia as MundialJurados_instancia,
	mj.idEquipoCategoria as MundialJurados_idEquipoCategoria,
	mj.IdIdioma as MundialJurados_IdIdioma,
	mj.suplente as MundialJurados_suplente,
	mj.baja as MundialJurados_baja,

	------------------------------------------------------------------------------------------------

	i.IdIdioma as Idioma_IdIdioma,
	i.Codigo as Idioma_Codigo,
	i.KeyNombre as Idioma_KeyNombre,
	i.inactivo as Idioma_inactivo,
	i.Culture as Idioma_Culture,
	i.flgMundialista as Idioma_flgMundialista,


	ic.IdIdiomaClave as IdiomaClaves_IdIdiomaClave,
	ic.IdIdioma as IdiomaClaves_IdIdioma,
	ic.KeyClave as IdiomaClaves_KeyClave,
	ic.DesClave as IdiomaClaves_DesClave,
	ic.Baja as IdiomaClaves_Baja,

	-----------------------------------------------------------------------------------------------
	
	mi.IdMundialIdioma as MundialIdioma_IdMundialIdioma,
	mi.IdMundial as MundialIdioma_IdMundial,
	mi.IdIdioma as MundialIdioma_IdIdioma,

	------------------------------------------------------------------------------------------------

	t.idTexto as Textos_idTexto,
	t.idUsuario as Textos_idUsuario,
	t.IdIdioma as Textos_IdIdioma,
	t.Texto as Textos_Texto,
	t.Titulo as Textos_Titulo,
	t.FechaCreacion as Textos_FechaCreacion,
	t.FechaModificacion as Textos_FechaModificacion,
	t.baja as Textos_baja,
	t.Caracteres as Textos_Caracteres,
	t.old_ID as Textos_old_ID,
	t.Seudonimo as Textos_Seudonimo,

	------------------------------------------------------------------------------------------------

	tc.idTextoComentario as TextosComentarios_idTextoComentario,
	tc.idTexto as TextosComentarios_idTexto,
	tc.idUsuario as TextosComentarios_idUsuario,
	tc.Texto as TextosComentarios_Texto,
	tc.Fecha as TextosComentarios_Fecha,

	------------------------------------------------------------------------------------------------

	mjcs.IdMundialJuradoConfigSeleccion as MundialJuradosConfigSeleccion_IdMundialJuradoConfigSeleccion,
	mjcs.IdMundial as MundialJuradosConfigSeleccion_IdMundial,
	mjcs.instancia as MundialJuradosConfigSeleccion_instancia,
	mjcs.idEquipoCategoria as MundialJuradosConfigSeleccion_idEquipoCategoria,
	mjcs.IdIdioma as MundialJuradosConfigSeleccion_IdIdioma,
	mjcs.Cantidad as MundialJuradosConfigSeleccion_Cantidad,
	mjcs.baja as MundialJuradosConfigSeleccion_baja,

	------------------------------------------------------------------------------------------------

	m.IdMundial as Mundial_IdMundial,
	m.KeyNombre as Mundial_KeyNombre,
	m.KeyEdicion as Mundial_KeyEdicion,
	m.FechaIniInscripcion as Mundial_FechaIniInscripcion,
	m.FechaFinInscripcion as Mundial_FechaFinInscripcion,
	m.FechaIniAsignacionUsuarios as Mundial_FechaIniAsignacionUsuarios,
	m.FechaFinAsignacionUsuarios as Mundial_FechaFinAsignacionUsuarios,
	m.FechaIniEscritura as Mundial_FechaIniEscritura,
	m.FechaFinEscritura as Mundial_FechaFinEscritura,
	m.FechaIniPostulacionEdicion as Mundial_FechaIniPostulacionEdicion,
	m.FechaFinPostulacionEdicion as Mundial_FechaFinPostulacionEdicion,
	m.FechaIniVotacionEquipo as Mundial_FechaIniVotacionEquipo,
	m.FechaFinVotacionEquipo as Mundial_FechaFinVotacionEquipo,
	m.FechaIniEditTextoVotado as Mundial_FechaIniEditTextoVotado,
	m.FechaFinEditTextoVotado as Mundial_FechaFinEditTextoVotado,
	m.FechaIniEvaluacionJurados as Mundial_FechaIniEvaluacionJurados,
	m.FechaFinEvaluacionJurados as Mundial_FechaFinEvaluacionJurados,
	m.FechaIniEvaluacionJurados_PrejuradoInstancia1 as Mundial_FechaIniEvaluacionJurados_PrejuradoInstancia1,
	m.FechaFinEvaluacionJurados_PrejuradoInstancia1 as Mundial_FechaFinEvaluacionJurados_PrejuradoInstancia1,
	m.FechaIniEvaluacionJurados_PrejuradoInstancia2 as Mundial_FechaIniEvaluacionJurados_PrejuradoInstancia2,
	m.FechaFinEvaluacionJurados_PrejuradoInstancia2 as Mundial_FechaFinEvaluacionJurados_PrejuradoInstancia2,
	m.FechaIniEvaluacionJurados_Jurados as Mundial_FechaIniEvaluacionJurados_Jurados,
	m.FechaFinEvaluacionJurados_Jurados as Mundial_FechaFinEvaluacionJurados_Jurados,
	m.Finalizado as Mundial_Finalizado,
	m.RequierePreguntasCientificas as Mundial_RequierePreguntasCientificas,
	m.baja as Mundial_baja,

	------------------------------------------------------------------------------------------------

	mc.IdMundialConsigna as MundialConsignas_IdMundialConsigna,
	mc.IdMundial as MundialConsignas_IdMundial,
	mc.idEquipoCategoria as MundialConsignas_idEquipoCategoria,
	mc.AgrupadoContenido as MundialConsignas_AgrupadoContenido,
	mc.Dia as MundialConsignas_Dia,
	mc.keyVideoUrl as MundialConsignas_keyVideoUrl,
	mc.keyTextoSobreVideo as MundialConsignas_keyTextoSobreVideo,
	mc.keyTextoBajoVideo as MundialConsignas_keyTextoBajoVideo,
	mc.baja as MundialConsignas_baja,

	------------------------------------------------------------------------------------------------

	uc.IdUsuarioCategoria as UsuarioCategorias_IdUsuarioCategoria,
	uc.KeyNombre as UsuarioCategorias_KeyNombre,
	uc.EdadDesde as UsuarioCategorias_EdadDesde,
	uc.EdadHasta as UsuarioCategorias_EdadHasta,
	uc.inactivo as UsuarioCategorias_inactivo,
	uc.agrupadoContenido as UsuarioCategorias_agrupadoContenido,
	uc.idEquipoCategoria as UsuarioCategorias_idEquipoCategoria,
	uc.EsNino as UsuarioCategorias_EsNino,
	uc.EsAdolescente as UsuarioCategorias_EsAdolescente,
	uc.EsAdulto as UsuarioCategorias_EsAdulto,

	------------------------------------------------------------------------------------------------

	usc.IdUsuarioSubCategoria as UsuarioSubCategorias_IdUsuarioSubCategoria,
	usc.KeyNombre as UsuarioSubCategorias_KeyNombre,
	usc.EdadDesde as UsuarioSubCategorias_EdadDesde,
	usc.EdadHasta as UsuarioSubCategorias_EdadHasta,
	usc.inactivo as UsuarioSubCategorias_inactivo,
	usc.IdUsuarioCategoria as UsuarioSubCategorias_IdUsuarioCategoria,
	usc.orden as UsuarioSubCategorias_orden,
	
	------------------------------------------------------------------------------------------------
	
	mjv.IdMundialJuradoVoto as MundialJuradoVoto_IdMundialJuradoVoto,
	mjv.IdMundial as MundialJuradoVoto_IdMundial,
	mjv.IdMundialJurado as MundialJuradoVoto_IdMundialJurado,
	mjv.IdMundialTextoSeleccionEquipo as MundialJuradoVoto_IdMundialTextoSeleccionEquipo,
	mjv.flgVotado as MundialJuradoVoto_flgVotado,
	mjv.puntos as MundialJuradoVoto_puntos,
	mjv.flgLeido as MundialJuradoVoto_flgLeido,
	mjv.idEtiqueta as MundialJuradoVoto_idEtiqueta,
	mjv.IdUsuarioSubCategoria as MundialJuradoVoto_IdUsuarioSubCategoria,
	mjv.Observaciones as MundialJuradoVoto_Observaciones,
	mjv.baja as MundialJuradoVoto_baja,
	mjv.publicar as MundialJuradoVoto_publicar,

	------------------------------------------------------------------------------------------------

	mje.idEtiqueta as MundialJurado_Etiquetas_idEtiqueta,
	mje.KeyEtiqueta as MundialJurado_Etiquetas_KeyEtiqueta,
	mje.baja as MundialJurado_Etiquetas_baja,

	------------------------------------------------------------------------------------------------

	mtse.IdMundialTextoSeleccionEquipo as MundialTextosSeleccionEquipo_IdMundialTextoSeleccionEquipo,
	mtse.IdMundialTexto as MundialTextosSeleccionEquipo_IdMundialTexto,
	mtse.idEquipo as MundialTextosSeleccionEquipo_idEquipo,
	mtse.IdMundial as MundialTextosSeleccionEquipo_IdMundial,
	mtse.idTexto as MundialTextosSeleccionEquipo_idTexto,
	mtse.Posicion as MundialTextosSeleccionEquipo_Posicion,
	mtse.fecha as MundialTextosSeleccionEquipo_fecha,
	mtse.baja as MundialTextosSeleccionEquipo_baja,

	------------------------------------------------------------------------------------------------

	mt.IdMundialTexto as MundialTextos_IdMundialTexto,
	mt.IdMundial as MundialTextos_IdMundial,
	mt.idTexto as MundialTextos_idTexto,
	mt.baja as MundialTextos_baja,
	mt.FechaPublicacion as MundialTextos_FechaPublicacion,
	mt.dia as MundialTextos_dia,
	mt.Rating as MundialTextos_Rating,
	mt.PostuladoAutor as MundialTextos_PostuladoAutor,
	mt.PuntosVotoEquipo as MundialTextos_PuntosVotoEquipo,

	------------------------------------------------------------------------------------------------

	mtg.IdMundialTextosGanadores as MundialTextosGanadores_IdMundialTextosGanadores,
	mtg.IdMundial as MundialTextosGanadores_IdMundial,
	mtg.IdMundialTexto as MundialTextosGanadores_IdMundialTexto,
	mtg.idEquipo as MundialTextosGanadores_idEquipo,
	mtg.idTexto as MundialTextosGanadores_idTexto,
	mtg.idEquipoCategoria as MundialTextosGanadores_idEquipoCategoria,
	mtg.IdIdioma as MundialTextosGanadores_IdIdioma,
	mtg.idUsuarioGanador as MundialTextosGanadores_idUsuarioGanador,
	mtg.IdUsuarioSubCategoria as MundialTextosGanadores_IdUsuarioSubCategoria,
	mtg.Posicion as MundialTextosGanadores_Posicion,
	mtg.publicar as MundialTextosGanadores_publicar,

	------------------------------------------------------------------------------------------------

	tve.IdTextoVotoEquipo as TextoVotoEquipo_IdTextoVotoEquipo,
	tve.IdMundialTexto as TextoVotoEquipo_IdMundialTexto,
	tve.idUsuario as TextoVotoEquipo_idUsuario,
	tve.Voto1 as TextoVotoEquipo_Voto1,
	tve.Voto2 as TextoVotoEquipo_Voto2,
	tve.fecha as TextoVotoEquipo_fecha,
	tve.baja as TextoVotoEquipo_baja
	

FROM  USUARIOS as u
FULL OUTER JOIN MundialUsuario as mu on mu.idUsuario = u.idUsuario
FULL OUTER JOIN EquipoUsuarios as eu on eu.idUsuario = u.idUsuario
FULL OUTER JOIN EmergenciaPass as ep on ep.idUsuarioSolicitud = u.idUsuario
FULL OUTER JOIN Equipos as e on e.idEquipo = eu.idEquipo
FULL OUTER JOIN EquipoInvitados as ei on ei.idEquipo = e.idEquipo
FULL OUTER JOIN Zonas as z on z.idZona = e.idZona
FULL OUTER JOIN EquipoCategorias as ec on ec.idEquipoCategoria = e.idEquipoCategoria
FULL OUTER JOIN MundialJurados as mj on mj.idEquipoCategoria = ec.idEquipoCategoria
FULL OUTER JOIN Idioma as i on i.IdIdioma = mj.IdIdioma
FULL OUTER JOIN IdiomaClaves as ic on ic.IdIdioma = i.IdIdioma
FULL OUTER JOIN MundialIdioma as mi on mi.IdIdioma = i.IdIdioma
FULL OUTER JOIN Textos as t on t.IdIdioma = i.IdIdioma
FULL OUTER JOIN TextosComentarios as tc on tc.idTexto = t.idTexto
FULL OUTER JOIN MundialJuradosConfigSeleccion as mjcs on mjcs.idEquipoCategoria = ec.idEquipoCategoria
FULL OUTER JOIN Mundial as m on m.IdMundial = mjcs.IdMundial
FULL OUTER JOIN MundialConsignas as mc on mc.IdMundial = m.IdMundial
FULL OUTER JOIN UsuarioCategorias as uc on uc.idEquipoCategoria = ec.idEquipoCategoria
FULL OUTER JOIN UsuarioSubCategorias as usc on usc.IdUsuarioCategoria = uc.IdUsuarioCategoria
FULL OUTER JOIN MundialJuradoVoto as mjv on mjv.IdUsuarioSubCategoria = usc.IdUsuarioSubCategoria
FULL OUTER JOIN MundialJurado_Etiquetas as mje on mje.idEtiqueta = mjv.idEtiqueta
FULL OUTER JOIN MundialTextosSeleccionEquipo as mtse on mtse.IdMundialTextoSeleccionEquipo = mjv.IdMundialTextoSeleccionEquipo
FULL OUTER JOIN MundialTextos as mt on mt.IdMundialTexto = mtse.IdMundialTexto
FULL OUTER JOIN MundialTextosGanadores as mtg on mt.IdMundialTexto = mtse.IdMundialTexto
FULL OUTER JOIN TextoVotoEquipo as tve on tve.IdMundialTexto = mt.IdMundialTexto

;



--- Función para generar nuevo nombre de cada columna (tabla_columna) y evitar duplicados
SELECT
      'mpr.' + COLUMN_NAME + ' as ' + 'Mundial_Preguntas_Respuestas'+'_'+COLUMN_NAME+','
    FROM
        INFORMATION_SCHEMA.COLUMNS
    WHERE
        TABLE_NAME = 'Mundial_Preguntas_Respuestas'

GO



select * from Paises;

select * from IdiomaClaves;