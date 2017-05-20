#Использовать notify
#Использовать stream

Процедура ОбработчикФильтрации(Результат, ДополнительныеПараметры) Экспорт
	Элемент = ДополнительныеПараметры.Элемент;
	Результат = Элемент > 3;
КонецПроцедуры

Процедура ОбработчикОбработки(Результат, ДополнительныеПараметры) Экспорт
	Элемент = ДополнительныеПараметры.Элемент;
	Результат = Элемент + 1;
	Сообщить("Я - операция map, и это мое послание миру: элемент " + Элемент + " превратился в " + Результат);
КонецПроцедуры

ФункцияФильтрации = ОписанияОповещений.Создать("ОбработчикФильтрации", ЭтотОбъект);
ФункцияОбработки = ОписанияОповещений.Создать("ОбработчикОбработки", ЭтотОбъект);

Массив = Новый Массив;
Массив.Добавить(3);
Массив.Добавить(4);
Массив.Добавить(7);
Массив.Добавить(5);
Массив.Добавить(1);
Массив.Добавить(0);

// Стрим = Потоки.ИзКоллекции(Массив);
Стрим = Новый Стрим;
Стрим.УстановитьКоллекцию(Массив);

Результат = Стрим
	.Пропустить(2)
	.Фильтровать(ФункцияФильтрации)
	.Первые(2)
	.Обработать(ФункцияОбработки)
	.ВМассив();

Для Каждого Элемент Из Результат Цикл
	Сообщить(Элемент);
КонецЦикла;

Стрим = Потоки.ИзКоллекции(Массив);
Результат = Стрим.Сортировать().ВМассив();

Для Каждого Элемент Из Результат Цикл
	Сообщить(Элемент);
КонецЦикла;

Массив = Новый Массив;
Массив.Добавить(1);
Массив.Добавить(2);
Массив.Добавить(2);
Массив.Добавить(3);
Массив.Добавить(3);
Массив.Добавить(3);

Стрим = Потоки.ИзКоллекции(Массив);
Результат = Стрим.Различные().ВМассив();

Для Каждого Элемент Из Результат Цикл
	Сообщить(Элемент);
КонецЦикла;
