Функция НайтиИлиСоздатьПользователя(ПользовательИБ) Экспорт	
	ПользовательСсылка = НайтиПоНаименованию(ПользовательИБ.Имя);
	Если ПользовательСсылка.Пустая() Тогда
		ПользовательОбъект = СоздатьЭлемент();
		ПользовательОбъект.Наименование = ПользовательИБ.Имя;
		ПользовательОбъект.ПолноеИмя 	= ПользовательИБ.ПолноеИмя;
		
		ПользовательОбъект.ЗаполнитьНаборРолей(ПользовательИБ);
		ПользовательОбъект.Записать();
		
		ПользовательСсылка = ПользовательОбъект.Ссылка;		
	КонецЕсли;
	Возврат ПользовательСсылка;		
КонецФункции