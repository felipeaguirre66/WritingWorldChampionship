USE CHASCO

SELECT

	u.idUsuario as idUsuario,
	u.Genero as Genero,
	u.FechaNacimiento as FechaNacimiento,
	u.EducacionFormalYYYY as EducacionFormal,

	ic.DesClave as PaisUsuario,

	i1.KeyNombre as IdiomaUsuario,
	i2.KeyNombre as IdiomaMaterno,

	mpr.idUsuario as Mundial_Preguntas_Respuestas_idUsuario,
	mpr.Dia as Mundial_Preguntas_Respuestas_Dia,
	mpr.idPregunta as Mundial_Preguntas_Respuestas_idPregunta,
	mpr.Respuesta as Mundial_Preguntas_Respuestas_Respuesta,

	t.idTexto as idTexto,
	t.Texto as Texto,
	t.Titulo as Titulo,

	i3.KeyNombre as IdiomaTexto,

	t.Caracteres as TextoCaracteres,

	t.FechaCreacion as TextoFechaCreacion,
	t.FechaModificacion as TextoFechaModificacion,

	mt.FechaPublicacion as TextoFechaPublicacion,

	mtg.Posicion as PosicionTextoGanador,

	u.FechaAlta as FechaAlta,

	mu.fechaInscripcion as fechaInscripcionMundial,

	m.KeyEdicion as MundialEdicion,
	m.IdMundial as MundialEdicionNumerico,

	mu.Rating as MundialUsuarioRating,
	mu.Goles as MundialUsuarioGoles,

	eu.fechaIngreso as EquipoUsuariofechaIngreso,
	eu.FechaAsignacionAutomatica as EquipoUsuarioFechaAsignacionAutomatica,
	eu.FechaUsuarioNoEscribe as EquipoUsuarioFechaUsuarioNoEscribe,

	ei.fechaInvitacion as EquipoInvitadosFechaInvitacion,
	ei.fechaAceptacion as EquipoInvitadosFechaAceptacion,

	tc.Fecha as TextosComentariosFecha,

	e.NombreEquipo as NombreEquipo,

	tve.Voto1 as TextoVotoEquipoVoto1,
	tve.Voto2 as TextoVotoEquipoVoto2,
	tve.fecha as TextoVotoEquipoFecha,

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
	m.FechaFinEvaluacionJurados_Jurados as Mundial_FechaFinEvaluacionJurados_Jurados

FROM  USUARIOS as u
FULL OUTER JOIN Idioma as i1 on i1.IdIdioma = u.IdIdioma
FULL OUTER JOIN Idioma as i2 on i2.IdIdioma = u.IdIdioma_Materno
FULL OUTER JOIN MundialUsuario as mu on mu.idUsuario = u.idUsuario
FULL OUTER JOIN Textos as t on t.idUsuario = u.idUsuario
FULL OUTER JOIN Idioma as i3 on i3.IdIdioma = t.IdIdioma
FULL OUTER JOIN Mundial as m on m.IdMundial = mu.IdMundial
FULL OUTER JOIN Paises as p on p.IdPais = u.IdPais
FULL OUTER JOIN IdiomaClaves as ic on ic.KeyClave = p.KeyNombre
FULL OUTER JOIN EquipoUsuarios as eu on eu.idUsuario = u.idUsuario
FULL OUTER JOIN Equipos as e on e.idEquipo = eu.idEquipo
FULL OUTER JOIN EquipoInvitados as ei on ei.idEquipo = e.idEquipo
FULL OUTER JOIN TextosComentarios as tc on tc.idTexto = t.idTexto
FULL OUTER JOIN MundialTextos as mt on mt.IdTexto = t.IdTexto
FULL OUTER JOIN MundialTextosGanadores as mtg on mt.IdMundial = m.IdMundial
FULL OUTER JOIN TextoVotoEquipo as tve on tve.IdMundialTexto = mt.IdMundialTexto
FULL OUTER JOIN Mundial_Preguntas_Respuestas as mpr on mpr.idUsuario = u.idUsuario
;
