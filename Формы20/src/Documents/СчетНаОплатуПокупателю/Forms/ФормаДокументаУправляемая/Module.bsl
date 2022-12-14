
&НаКлиенте
Процедура ДоговорНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	Отбор = Новый Структура;
	Отбор.Вставить("Владелец", Объект.Контрагент);
	Отбор.Вставить("ПометкаУдаления", Ложь);
	
	ПараметрыФормы = Новый Структура;
	ПараметрыФормы.Вставить("Отбор", Отбор);
	
	Форма = ОткрытьФорму("Справочник.Договоры.ФормаВыбора", ПараметрыФормы, ЭтаФорма);
	Форма.АвтоЗаголовок = Ложь;
	Форма.Заголовок = "Договоры";
КонецПроцедуры


&НаКлиенте
Процедура ОбработкаВыбора(ВыбранноеЗначение, ИсточникВыбора)

	Если ТипЗнч(ВыбранноеЗначение) = Тип("СправочникСсылка.Договоры") Тогда
		
		Объект.Договор = ВыбранноеЗначение;
		
	КонецЕсли;

КонецПроцедуры 


