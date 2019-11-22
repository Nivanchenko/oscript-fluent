#Использовать notify

#Использовать "../internal"

// Создать ПроцессорКоллекций на основании переданной коллекции.
//
// Параметры:
//   Коллекция - Произвольный - Коллекция (Массив, ТаблицаЗначений...), на основании которой нужно
//		сформировать ПроцессорКоллекций.
//
//  Возвращаемое значение:
//   ПроцессорКоллекций - Инстанс класса ПроцессорКоллекций, заполненный переданной коллекцией.
//
Функция ИзКоллекции(Коллекция) Экспорт
	ПроцессорКоллекций = Новый ПроцессорКоллекций();
	ПроцессорКоллекций.УстановитьКоллекцию(Коллекция);

	Возврат ПроцессорКоллекций;
КонецФункции

// Создать ПроцессорКоллекций на основании переданной строки.
// Переданная строка преобразуется в коллекцию путем разделения строк.
//
// Параметры:
//   Строка - Строка - Строка, на основании которой нужно сформировать ПроцессорКоллекций.
//   РазделительСтрок - Строка - Разделитель строк, применяемый к Строке для получения коллекции.
//		Если не передан, строка разделяется на элементы посимвольно.
//   ВключатьПустые - Булево - Указывает необходимость включать в коллекцию пустые строки,
//		которые могут образоваться в результате разделения исходной строки.
//
//  Возвращаемое значение:
//   ПроцессорКоллекций - Инстанс класса ПроцессорКоллекций.
//
Функция ИзСтроки(Строка, РазделительСтрок = Неопределено, ВключатьПустые = Истина) Экспорт

	Если РазделительСтрок = Неопределено Тогда
		Коллекция = Новый Массив;
		ДлинаСтроки = СтрДлина(Строка);
		Для сч = 1 По ДлинаСтроки Цикл
			Коллекция.Добавить(Сред(Строка, сч, 1));
		КонецЦикла;
	Иначе
		Коллекция = СтрРазделить(Строка, РазделительСтрок, ВключатьПустые);
	КонецЕсли;

	ПроцессорКоллекций = Новый ПроцессорКоллекций();
	ПроцессорКоллекций.УстановитьКоллекцию(Коллекция);
	
	Возврат ПроцессорКоллекций;
	
КонецФункции

// Создать ПроцессорКоллекций на основании переданного набора значений.
// Добавляет элемент в ПроцессорКоллекций, если он не равен NULL.
//
// Параметры:
//	Элемент1 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент2 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент3 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент4 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент5 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент6 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент7 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент8 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент8 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент9 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент10 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент11 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент12 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент13 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент14 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент15 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент16 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент17 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент18 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент18 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент19 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент20 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент21 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент22 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент23 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент24 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент25 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент26 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент27 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент28 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент28 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент29 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент30 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент31 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//	Элемент32 - Произвольный - Элемент для добавления в ПроцессорКоллекций.
//
// Возвращаемое значение:
//	ПроцессорКоллекций - Инстанс класса ПроцессорКоллекций, заполненный переданным набором.
//
Функция ИзНабора( 
	// BSLLS:NumberOfParams-off
	// BSLLS:NumberOfOptionalParams-off
		Элемент1 = NULL, Элемент2 = NULL, Элемент3 = NULL, Элемент4 = NULL, Элемент5 = NULL,
		Элемент6 = NULL, Элемент7 = NULL, Элемент8 = NULL, Элемент9 = NULL, Элемент10 = NULL,
		Элемент11 = NULL, Элемент12 = NULL, Элемент13 = NULL, Элемент14 = NULL, Элемент15 = NULL,
		Элемент16 = NULL, Элемент17 = NULL, Элемент18 = NULL, Элемент19 = NULL, Элемент20 = NULL,
		Элемент21 = NULL, Элемент22 = NULL, Элемент23 = NULL, Элемент24 = NULL, Элемент25 = NULL,
		Элемент26 = NULL, Элемент27 = NULL, Элемент28 = NULL, Элемент29 = NULL, Элемент30 = NULL,
		Элемент31 = NULL, Элемент32 = NULL
	// BSLLS:NumberOfParams-on
	// BSLLS:NumberOfOptionalParams-on	
	) Экспорт

	Коллекция = Новый Массив;
	Для сч = 1 По 32 Цикл
		ДобавитьНеПустоеЗначениеВКоллекцию(Коллекция, Вычислить("Элемент" + сч));
	КонецЦикла;

	ПроцессорКоллекций = Новый ПроцессорКоллекций();
	ПроцессорКоллекций.УстановитьКоллекцию(Коллекция);
	
	Возврат ПроцессорКоллекций;
	
КонецФункции

// Стандартная функция сравнения.
// Сравнивает значения элементов коллекции через операторы ">", "<" и "=".
//
//  Возвращаемое значение:
//   ОписаниеОповещения - Инстанс класса ОписаниеОповещения, указывающий на стандартную функцию сравнения.
//
Функция СтандартнаяФункцияСравнения() Экспорт
	ДополнительныеПараметры = Новый Структура;
	ДополнительныеПараметры.Вставить("Элемент1");
	ДополнительныеПараметры.Вставить("Элемент2");
	
	ФункцияСравнения = Новый ОписаниеОповещения("ФункцияСравнения", ПроцессорыКоллекцийСлужебный, ДополнительныеПараметры);
	Возврат ФункцияСравнения;
КонецФункции

// Стандартная функция обработки - "Сообщить".
// Выполняет процедуру "Сообщить()" над каждым элементом коллекции.
//
//  Возвращаемое значение:
//   ОписаниеОповещения - Инстанс класса ОписаниеОповещения, указывающий на стандартную функцию обработки.
//
Функция СтандартнаяФункцияОбработки_Сообщить() Экспорт
	ФункцияОбработки = Новый ОписаниеОповещения("ФункцияОбработки_Сообщить", ПроцессорыКоллекцийСлужебный);
	Возврат ФункцияОбработки;
КонецФункции

Процедура ДобавитьНеПустоеЗначениеВКоллекцию(Коллекция, Значение)
	Если Значение <> NULL Тогда
		Коллекция.Добавить(Значение);
	КонецЕсли;
КонецПроцедуры
