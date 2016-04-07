Proceso sin_titulo
	escribir "Ingrese cantidad de establecimientos";
	leer nest;
	contadore<-0;
	contadora<-0;
	suma<-0;
	mayor<-0;
	menor<-600;
	bueno<-0;
	suf<-0;
	insuf<-0;
	cbueno<-0;
	csuf<-0;
	cinsuf<-0;
	ncolegio<-1;
	repetir
		escribir "ingrese cantiad de alumnos";
		leer nal;
		contadora<-0;
		suma<-0;
		Repetir
			escribir "Ingrese puntaje (0-600)";
			leer punt;
			suma<-suma+punt;
			si (punt>=500) Entonces
				escribir "Bueno";
				bueno<-bueno+1;
			Sino
				si(punt<300)Entonces
					escribir "Insuficiente";
					insuf<-insuf+1;
				sino
					escribir "Suficiente";
					suf<-suf+1;
				FinSi
			FinSi
			contadora<-contadora+1;
			total<-bueno+insuf+suf;
		Hasta Que contadora=nal;
		si (((bueno*100)/total)>=70)entonces
			cbueno<-cbueno+1;
		Sino
			si(((insuf*100)/total)>=70) entonces
				cinsuf<-cinsuf+1;
			Sino
				csuf<-csuf+1;
			FinSi
		FinSi
		escribir "Calificación del colegio ",ncolegio," : ", suma/nal;
		ncolegio<-ncolegio+1;
		si ((suma/nal)>mayor)entonces
			mayor<-(suma/nal);
		FinSi
		si((suma/nal)<menor)Entonces
			menor<-(suma/nal);
		FinSi
		contadore<-contadore+1;
	hasta que contadore=nest;
	escribir "Mejor puntaje de establecimiento: ", mayor;
	escribir "Menor puntaje de establecimiento: ", menor;
	escribir "Establecimientos buenos: ", cbueno;
	escribir "Establecimientos suficientes: ", csuf;
	escribir "Establecimientos insuficientes: ", cinsuf;
FinProceso
